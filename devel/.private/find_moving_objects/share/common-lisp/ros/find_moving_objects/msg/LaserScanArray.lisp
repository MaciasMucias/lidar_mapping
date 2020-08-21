; Auto-generated. Do not edit!


(cl:in-package find_moving_objects-msg)


;//! \htmlinclude LaserScanArray.msg.html

(cl:defclass <LaserScanArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (msgs
    :reader msgs
    :initarg :msgs
    :type (cl:vector sensor_msgs-msg:LaserScan)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:LaserScan :initial-element (cl:make-instance 'sensor_msgs-msg:LaserScan))))
)

(cl:defclass LaserScanArray (<LaserScanArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserScanArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserScanArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name find_moving_objects-msg:<LaserScanArray> is deprecated: use find_moving_objects-msg:LaserScanArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaserScanArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:header-val is deprecated.  Use find_moving_objects-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'msgs-val :lambda-list '(m))
(cl:defmethod msgs-val ((m <LaserScanArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:msgs-val is deprecated.  Use find_moving_objects-msg:msgs instead.")
  (msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserScanArray>) ostream)
  "Serializes a message object of type '<LaserScanArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserScanArray>) istream)
  "Deserializes a message object of type '<LaserScanArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'msgs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'msgs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:LaserScan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserScanArray>)))
  "Returns string type for a message object of type '<LaserScanArray>"
  "find_moving_objects/LaserScanArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserScanArray)))
  "Returns string type for a message object of type 'LaserScanArray"
  "find_moving_objects/LaserScanArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserScanArray>)))
  "Returns md5sum for a message object of type '<LaserScanArray>"
  "8fef4bfad359e95377aae0ce4e718ce9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserScanArray)))
  "Returns md5sum for a message object of type 'LaserScanArray"
  "8fef4bfad359e95377aae0ce4e718ce9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserScanArray>)))
  "Returns full string definition for message of type '<LaserScanArray>"
  (cl:format cl:nil "# If using this message type, then:~%#   the time stamp of this message and the ones in the array must be highly related, or better yet, equal; and~%#   the frame_id of each message in the array must be transformable into the frame_id of this message.~%# Basically, all LaserScan messages in the array should come from different sensor entities on the same sensor unit.~%# This message type could, for example, be used for a multi-diode Lidar or similar.~%~%Header header~%sensor_msgs/LaserScan[] msgs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserScanArray)))
  "Returns full string definition for message of type 'LaserScanArray"
  (cl:format cl:nil "# If using this message type, then:~%#   the time stamp of this message and the ones in the array must be highly related, or better yet, equal; and~%#   the frame_id of each message in the array must be transformable into the frame_id of this message.~%# Basically, all LaserScan messages in the array should come from different sensor entities on the same sensor unit.~%# This message type could, for example, be used for a multi-diode Lidar or similar.~%~%Header header~%sensor_msgs/LaserScan[] msgs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserScanArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'msgs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserScanArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserScanArray
    (cl:cons ':header (header msg))
    (cl:cons ':msgs (msgs msg))
))
