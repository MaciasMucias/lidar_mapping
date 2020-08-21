#!/usr/bin/env python

import numpy as np
import cv2
from time import time

import rospy
from nav_msgs.msg import OccupancyGrid, Odometry
from visualization_msgs.msg import MarkerArray

detection_size = 3
rows = 3


class LifeCanditate:
  def __init__(self, position, id):
    self.x = position.x
    self.y = position.y
    self.age = 600
    self.id = id
     

  def check_cohirency(self, pos):
    if((self.x-pos.x)**2+(self.y-pos.y)**2)**0.5<0.5:
      return [self]
    else:
      new_candidate = LifeCanditate(pos, self.id)
      self.id = None
      return [self, new_candidate]

class Map:
  def __init__(self):
    self.possible_life = []

  def add_map(self, data):
    self.data = np.array(data)
    self.data = self.data.reshape(self.metadata.height, self.metadata.width)
  
  def manage_markers(self, msg):
    updated_canditates = []
    for marker in msg.markers:
      for candiate in self.possible_life:
        if candiate.id == marker.id:
          updated_canditates.extend(candiate.check_cohirency(marker.pose.position))
        elif candiate.id is None and candiate.age > 0:
          updated_canditates.append(candiate)
      else:
          updated_canditates.append(LifeCanditate(marker.pose.position, marker.id))

    for candiate in updated_canditates:
      if candiate.id is not None:
        pos = np.array([candiate.x - self.metadata.origin.position.x, candiate.y - self.metadata.origin.position.y])
        x, y = list(map(int, np.round(pos/self.metadata.resolution)))
        self.data[y-detection_size:y+detection_size, x-detection_size:x+detection_size] = -3
      else:
        candiate.age -= 1
    
    self.possible_life = updated_canditates
    
  def detect_life(self):
    # Calculating mapper's position relative to cell [0, 0] and converting it to cell coordinates
    self._pos_dev = np.array([self.odom[0] - self.metadata.origin.position.x, self.odom[1] - self.metadata.origin.position.y])
    self._pos_dev_int = list(map(int, np.round(self._pos_dev/self.metadata.resolution)))
    
    self.data[self._pos_dev_int[1], self._pos_dev_int[0]] = -2
    self.display_map()

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
    return np.array([list(map(give_colour, row)) for row in data])

  def display_map(self):
    _map = self._colour_map(self.data) 
    cv2.imshow('test', _map)
    cv2.waitKey(1)

class LifeMonitor:
  def __init__(self):
    self._map = Map()

  def odom_callback(self, msg):
    self._map.odom = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y])
    self._map.rotation = msg.pose.pose.orientation.z * np.pi

  def map_callback(self, msg):
    self._map.metadata = msg.info
    self._map.add_map(msg.data)
    
  def marker_callback(self, msg):
    self._map.manage_markers(msg)

  #Function for testing purposes
  def spin_n(self, n):
    for i in range(n):
      start = time()
      msg_odom = rospy.wait_for_message("/slamware_ros_sdk_server_node/odom", Odometry, timeout=None)
      msg_map = rospy.wait_for_message("/slamware_ros_sdk_server_node/map", OccupancyGrid, timeout=None)
      msg_markers = rospy.wait_for_message("/viz", MarkerArray, timeout=None)
      
      mid = time()

      self.map_callback(msg_map)
      self.odom_callback(msg_odom) 
      self.marker_callback(msg_markers)

      end = time()
      print "Callback and message cycle", i+1, " Only messeges - ", mid - start, "s, Only callback - ", end - mid, "s, Whole - ", end - start, "s"
      self._map.detect_life()

def main():
  rospy.init_node("life_detection")
  monitor = LifeMonitor()
  monitor.spin_n(50)
  return 0



if __name__ == '__main__':
  main()