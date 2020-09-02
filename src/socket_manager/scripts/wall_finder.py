#!/usr/bin/env python

import numpy as np
import sklearn.cluster
import matplotlib.pyplot as plt

import rospy
from tf import TransformListener
import tf.transformations as transf
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
from socket_manager.srv import GetDistanceFromWall, GetDistanceFromWallResponse


class CameraWallDetection:
    def __init__(self, tf):
        self.x = self.y = self.z = None
        self.tf = tf

    @staticmethod
    def wrap_to_pi(angle):
        return angle%(2*np.pi)

    def filter_angles(self, offset, angle):
        edges = np.array([self.wrap_to_pi(self.z-offset), self.wrap_to_pi(self.z+offset)])
        return not edges.min() < self.wrap_to_pi(angle) < edges.max()

    def update_location(self, data):
        try:
            if self.tf.frameExists("odom") and self.tf.frameExists("arm_cam"):
                t = self.tf.getLatestCommonTime("odom", "arm_cam")
                position, quaternion = self.tf.lookupTransform("odom", "arm_cam", t)
                angles = transf.euler_from_quaternion(quaternion)
                self.x = position[0] - data.pose.pose.position.x
                self.y = position[1] - data.pose.pose.position.y
                self.z = angles[2]
        except:
            pass

    def update_scans(self, data):
        self.angle_min = data.angle_min
        self.angle_delta = data.angle_increment
        self.range_min = data.range_min
        self.range_max = data.range_max
        self.distances = data.ranges

    def find_wall(self, angle_range=1):
        wall_ranges = []
        angle_cur = self.angle_min
        for dist in self.distances:
            angle_cur += self.angle_delta
            # throwing out incorect data
            if not self.range_min < dist < self.range_max:
                continue
            # throwing out data that wont be of use
            if False and self.filter_angles(angle_range, angle_cur):
                continue
            # Moving the laser scans so camera is the (0,0) point
            wall_ranges.append([np.cos(angle_cur)*dist-self.x, np.sin(angle_cur)*dist-self.y])
        
        # Detection of dense clusters of laser scans (closer walls have more dense scans)
        # Each cluster is an individual wall
        wall_ranges = np.array(wall_ranges)
        db = sklearn.cluster.DBSCAN(eps=0.08, min_samples=4).fit(wall_ranges)
        core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
        core_samples_mask[db.core_sample_indices_] = True
        labels = db.labels_
        n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)

        unique_labels = set(labels)
        ray = np.array([-np.sin(self.z), np.cos(self.z), self.x*np.sin(self.z)-self.y*np.cos(self.z)])
        for k in unique_labels:
            if k == -1:
                continue
            # for each wall find a section described by two points 
            class_member_mask = (labels == k)
            xy = wall_ranges[class_member_mask & core_samples_mask]
            try:
                wall_line = np.polyfit(xy[:, 0], xy[:, 1], 1)
                points = np.vstack([xy[0, 0], xy[-1, 0]])
                points = np.hstack([points, points*wall_line[0] + wall_line[1]])
            except:
                try:
                    wall_line = np.polyfit(xy[:, 1], xy[:, 0], 1)
                    points = np.vstack([xy[0, 1], xy[-1, 1]])
                    points = np.hstack([points, points*wall_line[0] + wall_line[1]])
                    points = points[::-1]
                except:
                    pass
            
            # from the points calculate canonical equation
            line_1 = np.array([points[0, 1]-points[1, 1], points[1, 0]-points[0, 0], points[0,0]*points[1,1]-points[0,1]*points[1, 0]])
            # find the point of intersection of the wall and ray coming from camera
            relation = line_1[0]*ray[1] - ray[0]*line_1[1]
            if relation == 0:
                continue
            intersection = np.array([line_1[1]*ray[2] - ray[1]*line_1[2], ray[0]*line_1[2] - line_1[0]*ray[2]])/relation
            
            
            if not (np.all((points[0]<intersection) & (intersection<points[1])) or np.all((points[1]<intersection) & (intersection<points[0]))):
                continue
            # calculate the distance to the intersection
            distance = np.sqrt((intersection[0])**2 + (intersection[1])**2)
            # find a perpendicular vector to the wall
            vec_2 = np.array([line_1[0], line_1[1]])
            # calculate relative angle of wall's perpendicular vector to the ray
            tmp = np.arctan2(vec_2[1], vec_2[0])
            angle = self.wrap_to_pi(self.z) - self.wrap_to_pi(np.arctan2(vec_2[1], vec_2[0]))
            return (distance, angle)
        # plt.show()
        return (-1, 0)

    def serve_wall_distance(self, req):
        res = self.find_wall()
        valid = True
        if res[0] == -1:
            valid = False
        return GetDistanceFromWallResponse(valid, res[0]*1000, res[1])

def main():
    rospy.init_node("wall_finder")
    tf = TransformListener()
    monitor = CameraWallDetection(tf)
    rospy.Service("socket_distance", GetDistanceFromWall, monitor.serve_wall_distance)
    rospy.Subscriber("slamware_ros_sdk_server_node/scan", LaserScan, monitor.update_scans)
    rospy.Subscriber("slamware_ros_sdk_server_node/odom", Odometry, monitor.update_location)
    rospy.spin()

if __name__ == "__main__":
    main()