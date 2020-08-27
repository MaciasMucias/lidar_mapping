import numpy as np
import sklearn.cluster
import matplotlib.pyplot as plt

import rospy
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry


class CameraWallDetection:
    def __init__(self):
        self.x, self.y, self.z = 0, 0, np.pi-0.6
        self.full = True
        plt.plot([self.x, self.x+np.cos(self.z)], [self.y, self.y+np.sin(self.z)])

    @staticmethod
    def wrap_to_pi(angle):
        return angle%(2*np.pi)

    def filter_angles(self, offset, angle):
        edges = np.array([self.wrap_to_pi(self.z-offset), self.wrap_to_pi(self.z+offset)])
        return not edges.min() < self.wrap_to_pi(angle) < edges.max()

    def find_wall(self, data, angle_range=1):
        angle_min = data.angle_min
        angle_delta = data.angle_increment
        distances = data.ranges

        wall_ranges = []
        angle_cur = angle_min
        for dist in distances:
            angle_cur += angle_delta
            if not data.range_min < dist < data.range_max:
                continue
            if not self.full and self.filter_angles(angle_range, angle_cur):
                continue
            wall_ranges.append([np.cos(angle_cur)*dist, np.sin(angle_cur)*dist])
        
        wall_ranges = np.array(wall_ranges)
        db = sklearn.cluster.DBSCAN(eps=0.05, min_samples=4).fit(wall_ranges)
        core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
        core_samples_mask[db.core_sample_indices_] = True
        labels = db.labels_
        n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)

        unique_labels = set(labels)
        ray = np.array([np.sin(self.z), -np.cos(self.z), self.y*np.cos(self.z)-self.x*np.sin(self.z)])
        for k, col in zip(unique_labels, colors):
            if k == -1:
                continue

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

            line_1 = np.array([points[1, 1]-points[0, 1], points[0, 0]-points[1, 0], points[1,0]*points[0,1]-points[1,1]*points[0, 0]])
            relation = line_1[0]*ray[1] - ray[0]*line_1[1]
            if relation == 0:
                continue
            intersection = np.array([line_1[1]*ray[2] - ray[1]*line_1[2], ray[0]*line_1[2] - line_1[0]*ray[2]])/relation
            if not np.all((points[0]<intersection) & (intersection<points[1])):
                continue
            hypotenuse = np.sqrt((self.x - intersection[0])**2 + (self.y - intersection[1])**2)
            dist = np.abs(line_1[0]*self.x + line_1[1]*self.y + line_1[2])/np.sqrt(line_1[0]**2 + line_1[1]**2) 
            angle = np.arccos(dist/hypotenuse)
            print hypotenuse, angle


def main():
    rospy.init_node("wall_finder")
    msg = rospy.wait_for_message("slamware_ros_sdk_server_node/scan", LaserScan, timeout=None)
    monitor = CameraWallDetection()
    monitor.find_wall(msg)

if __name__ == "__main__":
    main()