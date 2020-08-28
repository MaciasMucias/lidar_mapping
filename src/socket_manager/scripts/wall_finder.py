import numpy as np
import sklearn.cluster

import rospy
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
from socket_manager.srv import GetDistanceFromWall


class CameraWallDetection:
    def __init__(self):
        self.x = self.y = self.z = None

    @staticmethod
    def wrap_to_pi(angle):
        return angle%(2*np.pi)

    def filter_angles(self, offset, angle):
        edges = np.array([self.wrap_to_pi(self.z-offset), self.wrap_to_pi(self.z+offset)])
        return not edges.min() < self.wrap_to_pi(angle) < edges.max()

    def update_location(self, data):
        self.x = data.x
        self.y = data.y
        self.z = data.z

    def update_scans(self, data):
        self.angle_min = data.angle_min
        self.angle_delta = data.angle_increment
        self.distances = data.ranges

    def find_wall(self, angle_range=1):
        wall_ranges = []
        angle_cur = self.angle_min
        for dist in self.distances:
            angle_cur += self.angle_delta
            # throwing out incorect data
            if not data.range_min < dist < data.range_max:
                continue
            # throwing out data that wont be of use
            if False and self.filter_angles(angle_range, angle_cur):
                continue
            # Moving the laser scans so camera is the (0,0) point
            wall_ranges.append([np.cos(angle_cur)*dist-self.x, np.sin(angle_cur)*dist-self.y])
        
        # Detection of dense clusters of laser scans (closer walls have more dense scans)
        # Each cluster is an individual wall
        wall_ranges = np.array(wall_ranges)
        db = sklearn.cluster.DBSCAN(eps=0.05, min_samples=4).fit(wall_ranges)
        core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
        core_samples_mask[db.core_sample_indices_] = True
        labels = db.labels_
        n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)

        unique_labels = set(labels)
        ray = np.array([np.sin(self.z), -np.cos(self.z), 0])
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
            line_1 = np.array([points[1, 1]-points[0, 1], points[0, 0]-points[1, 0], points[1,0]*points[0,1]-points[1,1]*points[0, 0]])
            # find the point of intersection of the wall and ray coming from camera
            relation = line_1[0]*ray[1] - ray[0]*line_1[1]
            if relation == 0:
                continue
            intersection = np.array([line_1[1]*ray[2] - ray[1]*line_1[2], ray[0]*line_1[2] - line_1[0]*ray[2]])/relation
            if not np.all((points[0]<intersection) & (intersection<points[1])):
                continue
            # calculate the distance to the intersection
            distance = np.sqrt((intersection[0])**2 + (intersection[1])**2)
            # find a perpendicular vector to the wall
            vec_2 = np.array([line_1[1], -line_1[0]])
            # calculate relative angle of wall's perpendicular vector to the ray
            angle = self.z - np.arctan(vec_2[1]/vec_2[1])
            return distance, angle

    def serve_wall_distance(req):
        res = self.find_wall()
        return GetDistanceFromWall(res[0], res[1])

def main():
    rospy.init_node("wall_finder")
    monitor = CameraWallDetection()
    rospy.Service("socket_distance", GetDistanceFromWall, monitor.serve_wall_distance)
    rospy.Subscriber("slamware_ros_sdk_server_node/scan", LaserScan, monitor.update_scans)
    rospy.spin()

if __name__ == "__main__":
    main()