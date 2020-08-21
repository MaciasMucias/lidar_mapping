;; Auto-generated. Do not edit!


(when (boundp 'find_moving_objects::PointCloud2Array)
  (if (not (find-package "FIND_MOVING_OBJECTS"))
    (make-package "FIND_MOVING_OBJECTS"))
  (shadow 'PointCloud2Array (find-package "FIND_MOVING_OBJECTS")))
(unless (find-package "FIND_MOVING_OBJECTS::POINTCLOUD2ARRAY")
  (make-package "FIND_MOVING_OBJECTS::POINTCLOUD2ARRAY"))

(in-package "ROS")
;;//! \htmlinclude PointCloud2Array.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass find_moving_objects::PointCloud2Array
  :super ros::object
  :slots (_header _msgs ))

(defmethod find_moving_objects::PointCloud2Array
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:msgs __msgs) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _msgs __msgs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:msgs
   (&rest __msgs)
   (if (keywordp (car __msgs))
       (send* _msgs __msgs)
     (progn
       (if __msgs (setq _msgs (car __msgs)))
       _msgs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/PointCloud2[] _msgs
    (apply #'+ (send-all _msgs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/PointCloud2[] _msgs
     (write-long (length _msgs) s)
     (dolist (elem _msgs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/PointCloud2[] _msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msgs (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _msgs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get find_moving_objects::PointCloud2Array :md5sum-) "3f85282bae913047b119eb2b9f5bb1db")
(setf (get find_moving_objects::PointCloud2Array :datatype-) "find_moving_objects/PointCloud2Array")
(setf (get find_moving_objects::PointCloud2Array :definition-)
      "# If using this message type, then:
#   the time stamp of this message and the ones in the array must be highly related, or better yet, equal; and
#   the frame_id of each message in the array must be transformable into the frame_id of this message.
# Basically, all PointCloud2 messages in the array should come from different sensor entities on the same sensor unit.
# This message type could, for example, be used for a multi-lense camera unit, or a multi-diode Lidar.

Header header
sensor_msgs/PointCloud2[] msgs
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :find_moving_objects/PointCloud2Array "3f85282bae913047b119eb2b9f5bb1db")


