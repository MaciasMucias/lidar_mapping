; Auto-generated. Do not edit!


(cl:in-package find_moving_objects-msg)


;//! \htmlinclude MovingObjectArray.msg.html

(cl:defclass <MovingObjectArray> (roslisp-msg-protocol:ros-message)
  ((origin_node_name
    :reader origin_node_name
    :initarg :origin_node_name
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector find_moving_objects-msg:MovingObject)
   :initform (cl:make-array 0 :element-type 'find_moving_objects-msg:MovingObject :initial-element (cl:make-instance 'find_moving_objects-msg:MovingObject))))
)

(cl:defclass MovingObjectArray (<MovingObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name find_moving_objects-msg:<MovingObjectArray> is deprecated: use find_moving_objects-msg:MovingObjectArray instead.")))

(cl:ensure-generic-function 'origin_node_name-val :lambda-list '(m))
(cl:defmethod origin_node_name-val ((m <MovingObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:origin_node_name-val is deprecated.  Use find_moving_objects-msg:origin_node_name instead.")
  (origin_node_name m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <MovingObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:objects-val is deprecated.  Use find_moving_objects-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingObjectArray>) ostream)
  "Serializes a message object of type '<MovingObjectArray>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'origin_node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'origin_node_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingObjectArray>) istream)
  "Deserializes a message object of type '<MovingObjectArray>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'origin_node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'origin_node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'find_moving_objects-msg:MovingObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingObjectArray>)))
  "Returns string type for a message object of type '<MovingObjectArray>"
  "find_moving_objects/MovingObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingObjectArray)))
  "Returns string type for a message object of type 'MovingObjectArray"
  "find_moving_objects/MovingObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingObjectArray>)))
  "Returns md5sum for a message object of type '<MovingObjectArray>"
  "61dd63363b01476d95238afd8aff090e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingObjectArray)))
  "Returns md5sum for a message object of type 'MovingObjectArray"
  "61dd63363b01476d95238afd8aff090e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingObjectArray>)))
  "Returns full string definition for message of type '<MovingObjectArray>"
  (cl:format cl:nil "# The name of the ROS node sending this message.~%string origin_node_name~%~%# The objects themselves are stored in an array~%# (i.e. a vector). The number of elements in the ~%# array is obtained using objects.size() in C++.~%MovingObject[] objects~%================================================================================~%MSG: find_moving_objects/MovingObject~%# stamp is the time at which the sensor scanned this ~%# object. ~%# frame_id is the frame (i.e. coordinate system) of the ~%# sensor - this is the frame in which the given relative ~%# information below (the variables position, velocity, ~%# speed, angle_* etc.) is valid.~%# seq is not really used.~%Header header~%~%# The frame which is considered world-fixed and never ~%# moves. Note that the robot's position in this frame ~%# can be discontinuous.~%# The variables *_in_map_frame below are specified in ~%# this frame.~%string map_frame~%~%# The frame in which the movement of the robot is always~%# continuous and in which all transforms are made.~%# The variables *_in_fixed_frame below are ~%# specified in this frame.~%string fixed_frame~%~%# The frame which is considered fixed on the robot and ~%# in which the variables *_in_base_frame below are~%# specified.~%string base_frame~%~%# The width of the object as seen by the given ~%# sensor (calculated based on angle_begin, angle_end,~%# distance_angle_begin and distance_angle_end as ~%# given below using the law of cosine).~%float64 seen_width~%~%# In frame header.frame_id, angles are measured around ~%# the positive Z axis (counterclockwise; Z is pointing up)~%# with zero angle being forward along the x axis, provided~%# that the frame is not an optical/camera frame.~%# In case of an optical frame (Z is pointing forward and Y~%# is pointing down), then angles are measured around the ~%# negative Y axis.~%# The angles given specify where the object is to be~%# found in the frame header.frame_id (this is thus ~%# relative to the X-axis of the sensor in a regular frame~%# and relative the Z-axis, but negated, in an optical frame).~%float64 angle_begin~%float64 angle_end~%~%# The scanned distances to the object's end points as ~%# specified by angle_begin and angle_end.~%float64 distance_at_angle_begin~%float64 distance_at_angle_end~%~%# The averaged distance (approximated to be at ~%# (angle_begin+angle_end)/2) from the sensor to the seen~%# object.~%float64 distance~%~%# Position and velocity of the object.~%geometry_msgs/Point position_in_map_frame~%geometry_msgs/Point position_in_fixed_frame~%geometry_msgs/Point position_in_base_frame~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity_in_map_frame~%geometry_msgs/Vector3 velocity_in_fixed_frame~%geometry_msgs/Vector3 velocity_in_base_frame~%geometry_msgs/Vector3 velocity~%~%# For convenience, the normalized velocity vector is~%# also given, along with the scale factor (speed).~%geometry_msgs/Vector3 velocity_normalized_in_map_frame~%geometry_msgs/Vector3 velocity_normalized_in_fixed_frame~%geometry_msgs/Vector3 velocity_normalized_in_base_frame~%geometry_msgs/Vector3 velocity_normalized~%float64 speed_in_map_frame~%float64 speed_in_fixed_frame~%float64 speed_in_base_frame~%float64 speed~%~%# The point on the object closest to the sensor.~%geometry_msgs/Point closest_point_in_map_frame~%geometry_msgs/Point closest_point_in_fixed_frame~%geometry_msgs/Point closest_point_in_base_frame~%geometry_msgs/Point closest_point~%~%# For convenience, the distance from the sensor to the ~%# closest point on the object and at what angle it is to ~%# be found in relation to the sensor (i.e. ~%# header.frame_id).~%float64 closest_distance~%float64 angle_for_closest_distance~%~%# A measure on how confident the sending node is about ~%# the specified information.~%float64 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingObjectArray)))
  "Returns full string definition for message of type 'MovingObjectArray"
  (cl:format cl:nil "# The name of the ROS node sending this message.~%string origin_node_name~%~%# The objects themselves are stored in an array~%# (i.e. a vector). The number of elements in the ~%# array is obtained using objects.size() in C++.~%MovingObject[] objects~%================================================================================~%MSG: find_moving_objects/MovingObject~%# stamp is the time at which the sensor scanned this ~%# object. ~%# frame_id is the frame (i.e. coordinate system) of the ~%# sensor - this is the frame in which the given relative ~%# information below (the variables position, velocity, ~%# speed, angle_* etc.) is valid.~%# seq is not really used.~%Header header~%~%# The frame which is considered world-fixed and never ~%# moves. Note that the robot's position in this frame ~%# can be discontinuous.~%# The variables *_in_map_frame below are specified in ~%# this frame.~%string map_frame~%~%# The frame in which the movement of the robot is always~%# continuous and in which all transforms are made.~%# The variables *_in_fixed_frame below are ~%# specified in this frame.~%string fixed_frame~%~%# The frame which is considered fixed on the robot and ~%# in which the variables *_in_base_frame below are~%# specified.~%string base_frame~%~%# The width of the object as seen by the given ~%# sensor (calculated based on angle_begin, angle_end,~%# distance_angle_begin and distance_angle_end as ~%# given below using the law of cosine).~%float64 seen_width~%~%# In frame header.frame_id, angles are measured around ~%# the positive Z axis (counterclockwise; Z is pointing up)~%# with zero angle being forward along the x axis, provided~%# that the frame is not an optical/camera frame.~%# In case of an optical frame (Z is pointing forward and Y~%# is pointing down), then angles are measured around the ~%# negative Y axis.~%# The angles given specify where the object is to be~%# found in the frame header.frame_id (this is thus ~%# relative to the X-axis of the sensor in a regular frame~%# and relative the Z-axis, but negated, in an optical frame).~%float64 angle_begin~%float64 angle_end~%~%# The scanned distances to the object's end points as ~%# specified by angle_begin and angle_end.~%float64 distance_at_angle_begin~%float64 distance_at_angle_end~%~%# The averaged distance (approximated to be at ~%# (angle_begin+angle_end)/2) from the sensor to the seen~%# object.~%float64 distance~%~%# Position and velocity of the object.~%geometry_msgs/Point position_in_map_frame~%geometry_msgs/Point position_in_fixed_frame~%geometry_msgs/Point position_in_base_frame~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity_in_map_frame~%geometry_msgs/Vector3 velocity_in_fixed_frame~%geometry_msgs/Vector3 velocity_in_base_frame~%geometry_msgs/Vector3 velocity~%~%# For convenience, the normalized velocity vector is~%# also given, along with the scale factor (speed).~%geometry_msgs/Vector3 velocity_normalized_in_map_frame~%geometry_msgs/Vector3 velocity_normalized_in_fixed_frame~%geometry_msgs/Vector3 velocity_normalized_in_base_frame~%geometry_msgs/Vector3 velocity_normalized~%float64 speed_in_map_frame~%float64 speed_in_fixed_frame~%float64 speed_in_base_frame~%float64 speed~%~%# The point on the object closest to the sensor.~%geometry_msgs/Point closest_point_in_map_frame~%geometry_msgs/Point closest_point_in_fixed_frame~%geometry_msgs/Point closest_point_in_base_frame~%geometry_msgs/Point closest_point~%~%# For convenience, the distance from the sensor to the ~%# closest point on the object and at what angle it is to ~%# be found in relation to the sensor (i.e. ~%# header.frame_id).~%float64 closest_distance~%float64 angle_for_closest_distance~%~%# A measure on how confident the sending node is about ~%# the specified information.~%float64 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingObjectArray>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'origin_node_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingObjectArray
    (cl:cons ':origin_node_name (origin_node_name msg))
    (cl:cons ':objects (objects msg))
))
