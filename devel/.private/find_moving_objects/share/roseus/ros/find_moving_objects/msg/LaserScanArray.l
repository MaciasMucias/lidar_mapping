;; Auto-generated. Do not edit!


(when (boundp 'find_moving_objects::LaserScanArray)
  (if (not (find-package "FIND_MOVING_OBJECTS"))
    (make-package "FIND_MOVING_OBJECTS"))
  (shadow 'LaserScanArray (find-package "FIND_MOVING_OBJECTS")))
(unless (find-package "FIND_MOVING_OBJECTS::LASERSCANARRAY")
  (make-package "FIND_MOVING_OBJECTS::LASERSCANARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaserScanArray.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass find_moving_objects::LaserScanArray
  :super ros::object
  :slots (_header _msgs ))

(defmethod find_moving_objects::LaserScanArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:msgs __msgs) (let (r) (dotimes (i 0) (push (instance sensor_msgs::LaserScan :init) r)) r))
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
    ;; sensor_msgs/LaserScan[] _msgs
    (apply #'+ (send-all _msgs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/LaserScan[] _msgs
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
   ;; sensor_msgs/LaserScan[] _msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msgs (let (r) (dotimes (i n) (push (instance sensor_msgs::LaserScan :init) r)) r))
     (dolist (elem- _msgs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get find_moving_objects::LaserScanArray :md5sum-) "8fef4bfad359e95377aae0ce4e718ce9")
(setf (get find_moving_objects::LaserScanArray :datatype-) "find_moving_objects/LaserScanArray")
(setf (get find_moving_objects::LaserScanArray :definition-)
      "# If using this message type, then:
#   the time stamp of this message and the ones in the array must be highly related, or better yet, equal; and
#   the frame_id of each message in the array must be transformable into the frame_id of this message.
# Basically, all LaserScan messages in the array should come from different sensor entities on the same sensor unit.
# This message type could, for example, be used for a multi-diode Lidar or similar.

Header header
sensor_msgs/LaserScan[] msgs

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
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

")



(provide :find_moving_objects/LaserScanArray "8fef4bfad359e95377aae0ce4e718ce9")


