#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt
from time import time

import rospy
from nav_msgs.msg import OccupancyGrid, Odometry
from sensor_msgs.msg import LaserScan

detection_size = 3
rows = 3


class LaserScanOverlay:
  def __init__(self, msg, rotation):
    self._angle_start = msg.angle_min
    self._angle_change = msg.angle_increment
    self._range_min = msg.range_min
    self._range_max = msg.range_max
    self._measurements = msg.ranges
    self.overlay = self.generate_overlay(rotation)

  def generate_overlay(self, rotation):
    #Convertion from polar to cartesian coordinate system
    overlay = []
    angle_cur = self._angle_start + rotation - self._angle_change
    for ind, distance in enumerate(self._measurements):
      angle_cur += self._angle_change
      if not self._range_min <= distance <= self._range_max:
        continue

      offset = (np.array([np.cos(angle_cur), np.sin(angle_cur)]))*distance
      overlay.append(offset)
    return np.array(overlay)


class Map:
  def __init__(self):
    self.scans = []

  def add_map(self, data):
    self.data = np.array(data)
    self.data = self.data.reshape(self.metadata.height, self.metadata.width)
  
  def add_scan(self, msg):
    self.scans.append(LaserScanOverlay(msg, self.rotation))
  
  def detect_life(self):
    # Calculating mapper's position relative to cell [0, 0] and converting it to cell coordinates
    self._pos_dev = np.array([self.odom[0] - self.metadata.origin.position.x, self.odom[1] - self.metadata.origin.position.y])
    self._pos_dev_int = list(map(int, np.round(self._pos_dev/self.metadata.resolution)))
    
    self.data[self._pos_dev_int[1], self._pos_dev_int[0]] = -2

    self.display_scans()

  @staticmethod
  def _colour_map(data):
    def give_colour(x):
      if x == -1:
        return [0.6]*3
      if x == 0:
        return [1]*3
      if x == -3:
        return [1, 0, 0]
      if x == 100:
        return [0]*3
      if x == -2:
        return [0, 1, 0]
      if x == -4:
        return [0, 0, 1]
    return [list(map(give_colour, row)) for row in data]

  def display_scans(self):
    overlaying_scans = []
    for scan in self.scans:
      overlaying_scans.append(np.round((scan.overlay+self._pos_dev)/self.metadata.resolution).astype('int16'))   
      
    overlayed_maps = []
    for scan in overlaying_scans:
      new_map = self.data.copy()
      for x, y in scan:
        try:
          if np.all(new_map[y-detection_size:y+detection_size, x-detection_size:x+detection_size] == 0) :
             new_map[y-detection_size:y+detection_size, x-detection_size:x+detection_size] = -3
        except:
          pass
      new_map = self._colour_map(new_map)
      overlayed_maps.append(new_map)

    n_rows = rows
    if n_rows > len(overlayed_maps):
      n_rows = len(overlayed_maps)
    cols = len(overlayed_maps)//n_rows
    fig, ax = plt.subplots(n_rows, cols)
    if type(ax) is not np.ndarray:
      ax = np.array([[ax]])
    elif len(ax.shape) == 1:
      ax = ax.reshape(1, -1)

    for ind, data in enumerate(overlayed_maps):
      ax[ind//cols, ind%cols].imshow(data)

    plt.show()


class LifeMonitor:
  def __init__(self):
    self._map = Map()

  def odom_callback(self, msg):
    self._map.odom = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y])
    self._map.rotation = msg.pose.pose.orientation.z * np.pi

  def map_callback(self, msg):
    self._map.metadata = msg.info
    self._map.add_map(msg.data)
    
  def laser_callback(self, msg):
    self._map.add_scan(msg)

  #Function for testing purposes
  def spin_n(self, n):
    for i in range(n):
      start = time()
      msg_odom = rospy.wait_for_message("/slamware_ros_sdk_server_node/odom", Odometry, timeout=None)
      msg_map = rospy.wait_for_message("/slamware_ros_sdk_server_node/map", OccupancyGrid, timeout=None)
      msg_laser = rospy.wait_for_message("/slamware_ros_sdk_server_node/scan", LaserScan, timeout=None)
      
      mid = time()

      self.map_callback(msg_map)
      self.odom_callback(msg_odom) 
      self.laser_callback(msg_laser)

      end = time()
      print "Callback and message cycle", i+1, " Only messeges - ", mid - start, "s, Only callback - ", end - mid, "s, Whole - ", end - start, "s"
    self._map.detect_life()

def main():
  rospy.init_node("life_detection")
  monitor = LifeMonitor()
  monitor.spin_n(1)
  return 0



if __name__ == '__main__':
  main()