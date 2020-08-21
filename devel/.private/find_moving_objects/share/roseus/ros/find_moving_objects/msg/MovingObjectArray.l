;; Auto-generated. Do not edit!


(when (boundp 'find_moving_objects::MovingObjectArray)
  (if (not (find-package "FIND_MOVING_OBJECTS"))
    (make-package "FIND_MOVING_OBJECTS"))
  (shadow 'MovingObjectArray (find-package "FIND_MOVING_OBJECTS")))
(unless (find-package "FIND_MOVING_OBJECTS::MOVINGOBJECTARRAY")
  (make-package "FIND_MOVING_OBJECTS::MOVINGOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude MovingObjectArray.msg.html


(defclass find_moving_objects::MovingObjectArray
  :super ros::object
  :slots (_origin_node_name _objects ))

(defmethod find_moving_objects::MovingObjectArray
  (:init
   (&key
    ((:origin_node_name __origin_node_name) "")
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance find_moving_objects::MovingObject :init) r)) r))
    )
   (send-super :init)
   (setq _origin_node_name (string __origin_node_name))
   (setq _objects __objects)
   self)
  (:origin_node_name
   (&optional __origin_node_name)
   (if __origin_node_name (setq _origin_node_name __origin_node_name)) _origin_node_name)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; string _origin_node_name
    4 (length _origin_node_name)
    ;; find_moving_objects/MovingObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _origin_node_name
       (write-long (length _origin_node_name) s) (princ _origin_node_name s)
     ;; find_moving_objects/MovingObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _origin_node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _origin_node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; find_moving_objects/MovingObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance find_moving_objects::MovingObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get find_moving_objects::MovingObjectArray :md5sum-) "61dd63363b01476d95238afd8aff090e")
(setf (get find_moving_objects::MovingObjectArray :datatype-) "find_moving_objects/MovingObjectArray")
(setf (get find_moving_objects::MovingObjectArray :definition-)
      "# The name of the ROS node sending this message.
string origin_node_name

# The objects themselves are stored in an array
# (i.e. a vector). The number of elements in the 
# array is obtained using objects.size() in C++.
MovingObject[] objects
================================================================================
MSG: find_moving_objects/MovingObject
# stamp is the time at which the sensor scanned this 
# object. 
# frame_id is the frame (i.e. coordinate system) of the 
# sensor - this is the frame in which the given relative 
# information below (the variables position, velocity, 
# speed, angle_* etc.) is valid.
# seq is not really used.
Header header

# The frame which is considered world-fixed and never 
# moves. Note that the robot's position in this frame 
# can be discontinuous.
# The variables *_in_map_frame below are specified in 
# this frame.
string map_frame

# The frame in which the movement of the robot is always
# continuous and in which all transforms are made.
# The variables *_in_fixed_frame below are 
# specified in this frame.
string fixed_frame

# The frame which is considered fixed on the robot and 
# in which the variables *_in_base_frame below are
# specified.
string base_frame

# The width of the object as seen by the given 
# sensor (calculated based on angle_begin, angle_end,
# distance_angle_begin and distance_angle_end as 
# given below using the law of cosine).
float64 seen_width

# In frame header.frame_id, angles are measured around 
# the positive Z axis (counterclockwise; Z is pointing up)
# with zero angle being forward along the x axis, provided
# that the frame is not an optical/camera frame.
# In case of an optical frame (Z is pointing forward and Y
# is pointing down), then angles are measured around the 
# negative Y axis.
# The angles given specify where the object is to be
# found in the frame header.frame_id (this is thus 
# relative to the X-axis of the sensor in a regular frame
# and relative the Z-axis, but negated, in an optical frame).
float64 angle_begin
float64 angle_end

# The scanned distances to the object's end points as 
# specified by angle_begin and angle_end.
float64 distance_at_angle_begin
float64 distance_at_angle_end

# The averaged distance (approximated to be at 
# (angle_begin+angle_end)/2) from the sensor to the seen
# object.
float64 distance

# Position and velocity of the object.
geometry_msgs/Point position_in_map_frame
geometry_msgs/Point position_in_fixed_frame
geometry_msgs/Point position_in_base_frame
geometry_msgs/Point position
geometry_msgs/Vector3 velocity_in_map_frame
geometry_msgs/Vector3 velocity_in_fixed_frame
geometry_msgs/Vector3 velocity_in_base_frame
geometry_msgs/Vector3 velocity

# For convenience, the normalized velocity vector is
# also given, along with the scale factor (speed).
geometry_msgs/Vector3 velocity_normalized_in_map_frame
geometry_msgs/Vector3 velocity_normalized_in_fixed_frame
geometry_msgs/Vector3 velocity_normalized_in_base_frame
geometry_msgs/Vector3 velocity_normalized
float64 speed_in_map_frame
float64 speed_in_fixed_frame
float64 speed_in_base_frame
float64 speed

# The point on the object closest to the sensor.
geometry_msgs/Point closest_point_in_map_frame
geometry_msgs/Point closest_point_in_fixed_frame
geometry_msgs/Point closest_point_in_base_frame
geometry_msgs/Point closest_point

# For convenience, the distance from the sensor to the 
# closest point on the object and at what angle it is to 
# be found in relation to the sensor (i.e. 
# header.frame_id).
float64 closest_distance
float64 angle_for_closest_distance

# A measure on how confident the sending node is about 
# the specified information.
float64 confidence
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :find_moving_objects/MovingObjectArray "61dd63363b01476d95238afd8aff090e")


