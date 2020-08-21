;; Auto-generated. Do not edit!


(when (boundp 'find_moving_objects::MovingObject)
  (if (not (find-package "FIND_MOVING_OBJECTS"))
    (make-package "FIND_MOVING_OBJECTS"))
  (shadow 'MovingObject (find-package "FIND_MOVING_OBJECTS")))
(unless (find-package "FIND_MOVING_OBJECTS::MOVINGOBJECT")
  (make-package "FIND_MOVING_OBJECTS::MOVINGOBJECT"))

(in-package "ROS")
;;//! \htmlinclude MovingObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass find_moving_objects::MovingObject
  :super ros::object
  :slots (_header _map_frame _fixed_frame _base_frame _seen_width _angle_begin _angle_end _distance_at_angle_begin _distance_at_angle_end _distance _position_in_map_frame _position_in_fixed_frame _position_in_base_frame _position _velocity_in_map_frame _velocity_in_fixed_frame _velocity_in_base_frame _velocity _velocity_normalized_in_map_frame _velocity_normalized_in_fixed_frame _velocity_normalized_in_base_frame _velocity_normalized _speed_in_map_frame _speed_in_fixed_frame _speed_in_base_frame _speed _closest_point_in_map_frame _closest_point_in_fixed_frame _closest_point_in_base_frame _closest_point _closest_distance _angle_for_closest_distance _confidence ))

(defmethod find_moving_objects::MovingObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map_frame __map_frame) "")
    ((:fixed_frame __fixed_frame) "")
    ((:base_frame __base_frame) "")
    ((:seen_width __seen_width) 0.0)
    ((:angle_begin __angle_begin) 0.0)
    ((:angle_end __angle_end) 0.0)
    ((:distance_at_angle_begin __distance_at_angle_begin) 0.0)
    ((:distance_at_angle_end __distance_at_angle_end) 0.0)
    ((:distance __distance) 0.0)
    ((:position_in_map_frame __position_in_map_frame) (instance geometry_msgs::Point :init))
    ((:position_in_fixed_frame __position_in_fixed_frame) (instance geometry_msgs::Point :init))
    ((:position_in_base_frame __position_in_base_frame) (instance geometry_msgs::Point :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity_in_map_frame __velocity_in_map_frame) (instance geometry_msgs::Vector3 :init))
    ((:velocity_in_fixed_frame __velocity_in_fixed_frame) (instance geometry_msgs::Vector3 :init))
    ((:velocity_in_base_frame __velocity_in_base_frame) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:velocity_normalized_in_map_frame __velocity_normalized_in_map_frame) (instance geometry_msgs::Vector3 :init))
    ((:velocity_normalized_in_fixed_frame __velocity_normalized_in_fixed_frame) (instance geometry_msgs::Vector3 :init))
    ((:velocity_normalized_in_base_frame __velocity_normalized_in_base_frame) (instance geometry_msgs::Vector3 :init))
    ((:velocity_normalized __velocity_normalized) (instance geometry_msgs::Vector3 :init))
    ((:speed_in_map_frame __speed_in_map_frame) 0.0)
    ((:speed_in_fixed_frame __speed_in_fixed_frame) 0.0)
    ((:speed_in_base_frame __speed_in_base_frame) 0.0)
    ((:speed __speed) 0.0)
    ((:closest_point_in_map_frame __closest_point_in_map_frame) (instance geometry_msgs::Point :init))
    ((:closest_point_in_fixed_frame __closest_point_in_fixed_frame) (instance geometry_msgs::Point :init))
    ((:closest_point_in_base_frame __closest_point_in_base_frame) (instance geometry_msgs::Point :init))
    ((:closest_point __closest_point) (instance geometry_msgs::Point :init))
    ((:closest_distance __closest_distance) 0.0)
    ((:angle_for_closest_distance __angle_for_closest_distance) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _map_frame (string __map_frame))
   (setq _fixed_frame (string __fixed_frame))
   (setq _base_frame (string __base_frame))
   (setq _seen_width (float __seen_width))
   (setq _angle_begin (float __angle_begin))
   (setq _angle_end (float __angle_end))
   (setq _distance_at_angle_begin (float __distance_at_angle_begin))
   (setq _distance_at_angle_end (float __distance_at_angle_end))
   (setq _distance (float __distance))
   (setq _position_in_map_frame __position_in_map_frame)
   (setq _position_in_fixed_frame __position_in_fixed_frame)
   (setq _position_in_base_frame __position_in_base_frame)
   (setq _position __position)
   (setq _velocity_in_map_frame __velocity_in_map_frame)
   (setq _velocity_in_fixed_frame __velocity_in_fixed_frame)
   (setq _velocity_in_base_frame __velocity_in_base_frame)
   (setq _velocity __velocity)
   (setq _velocity_normalized_in_map_frame __velocity_normalized_in_map_frame)
   (setq _velocity_normalized_in_fixed_frame __velocity_normalized_in_fixed_frame)
   (setq _velocity_normalized_in_base_frame __velocity_normalized_in_base_frame)
   (setq _velocity_normalized __velocity_normalized)
   (setq _speed_in_map_frame (float __speed_in_map_frame))
   (setq _speed_in_fixed_frame (float __speed_in_fixed_frame))
   (setq _speed_in_base_frame (float __speed_in_base_frame))
   (setq _speed (float __speed))
   (setq _closest_point_in_map_frame __closest_point_in_map_frame)
   (setq _closest_point_in_fixed_frame __closest_point_in_fixed_frame)
   (setq _closest_point_in_base_frame __closest_point_in_base_frame)
   (setq _closest_point __closest_point)
   (setq _closest_distance (float __closest_distance))
   (setq _angle_for_closest_distance (float __angle_for_closest_distance))
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map_frame
   (&optional __map_frame)
   (if __map_frame (setq _map_frame __map_frame)) _map_frame)
  (:fixed_frame
   (&optional __fixed_frame)
   (if __fixed_frame (setq _fixed_frame __fixed_frame)) _fixed_frame)
  (:base_frame
   (&optional __base_frame)
   (if __base_frame (setq _base_frame __base_frame)) _base_frame)
  (:seen_width
   (&optional __seen_width)
   (if __seen_width (setq _seen_width __seen_width)) _seen_width)
  (:angle_begin
   (&optional __angle_begin)
   (if __angle_begin (setq _angle_begin __angle_begin)) _angle_begin)
  (:angle_end
   (&optional __angle_end)
   (if __angle_end (setq _angle_end __angle_end)) _angle_end)
  (:distance_at_angle_begin
   (&optional __distance_at_angle_begin)
   (if __distance_at_angle_begin (setq _distance_at_angle_begin __distance_at_angle_begin)) _distance_at_angle_begin)
  (:distance_at_angle_end
   (&optional __distance_at_angle_end)
   (if __distance_at_angle_end (setq _distance_at_angle_end __distance_at_angle_end)) _distance_at_angle_end)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:position_in_map_frame
   (&rest __position_in_map_frame)
   (if (keywordp (car __position_in_map_frame))
       (send* _position_in_map_frame __position_in_map_frame)
     (progn
       (if __position_in_map_frame (setq _position_in_map_frame (car __position_in_map_frame)))
       _position_in_map_frame)))
  (:position_in_fixed_frame
   (&rest __position_in_fixed_frame)
   (if (keywordp (car __position_in_fixed_frame))
       (send* _position_in_fixed_frame __position_in_fixed_frame)
     (progn
       (if __position_in_fixed_frame (setq _position_in_fixed_frame (car __position_in_fixed_frame)))
       _position_in_fixed_frame)))
  (:position_in_base_frame
   (&rest __position_in_base_frame)
   (if (keywordp (car __position_in_base_frame))
       (send* _position_in_base_frame __position_in_base_frame)
     (progn
       (if __position_in_base_frame (setq _position_in_base_frame (car __position_in_base_frame)))
       _position_in_base_frame)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity_in_map_frame
   (&rest __velocity_in_map_frame)
   (if (keywordp (car __velocity_in_map_frame))
       (send* _velocity_in_map_frame __velocity_in_map_frame)
     (progn
       (if __velocity_in_map_frame (setq _velocity_in_map_frame (car __velocity_in_map_frame)))
       _velocity_in_map_frame)))
  (:velocity_in_fixed_frame
   (&rest __velocity_in_fixed_frame)
   (if (keywordp (car __velocity_in_fixed_frame))
       (send* _velocity_in_fixed_frame __velocity_in_fixed_frame)
     (progn
       (if __velocity_in_fixed_frame (setq _velocity_in_fixed_frame (car __velocity_in_fixed_frame)))
       _velocity_in_fixed_frame)))
  (:velocity_in_base_frame
   (&rest __velocity_in_base_frame)
   (if (keywordp (car __velocity_in_base_frame))
       (send* _velocity_in_base_frame __velocity_in_base_frame)
     (progn
       (if __velocity_in_base_frame (setq _velocity_in_base_frame (car __velocity_in_base_frame)))
       _velocity_in_base_frame)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_normalized_in_map_frame
   (&rest __velocity_normalized_in_map_frame)
   (if (keywordp (car __velocity_normalized_in_map_frame))
       (send* _velocity_normalized_in_map_frame __velocity_normalized_in_map_frame)
     (progn
       (if __velocity_normalized_in_map_frame (setq _velocity_normalized_in_map_frame (car __velocity_normalized_in_map_frame)))
       _velocity_normalized_in_map_frame)))
  (:velocity_normalized_in_fixed_frame
   (&rest __velocity_normalized_in_fixed_frame)
   (if (keywordp (car __velocity_normalized_in_fixed_frame))
       (send* _velocity_normalized_in_fixed_frame __velocity_normalized_in_fixed_frame)
     (progn
       (if __velocity_normalized_in_fixed_frame (setq _velocity_normalized_in_fixed_frame (car __velocity_normalized_in_fixed_frame)))
       _velocity_normalized_in_fixed_frame)))
  (:velocity_normalized_in_base_frame
   (&rest __velocity_normalized_in_base_frame)
   (if (keywordp (car __velocity_normalized_in_base_frame))
       (send* _velocity_normalized_in_base_frame __velocity_normalized_in_base_frame)
     (progn
       (if __velocity_normalized_in_base_frame (setq _velocity_normalized_in_base_frame (car __velocity_normalized_in_base_frame)))
       _velocity_normalized_in_base_frame)))
  (:velocity_normalized
   (&rest __velocity_normalized)
   (if (keywordp (car __velocity_normalized))
       (send* _velocity_normalized __velocity_normalized)
     (progn
       (if __velocity_normalized (setq _velocity_normalized (car __velocity_normalized)))
       _velocity_normalized)))
  (:speed_in_map_frame
   (&optional __speed_in_map_frame)
   (if __speed_in_map_frame (setq _speed_in_map_frame __speed_in_map_frame)) _speed_in_map_frame)
  (:speed_in_fixed_frame
   (&optional __speed_in_fixed_frame)
   (if __speed_in_fixed_frame (setq _speed_in_fixed_frame __speed_in_fixed_frame)) _speed_in_fixed_frame)
  (:speed_in_base_frame
   (&optional __speed_in_base_frame)
   (if __speed_in_base_frame (setq _speed_in_base_frame __speed_in_base_frame)) _speed_in_base_frame)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:closest_point_in_map_frame
   (&rest __closest_point_in_map_frame)
   (if (keywordp (car __closest_point_in_map_frame))
       (send* _closest_point_in_map_frame __closest_point_in_map_frame)
     (progn
       (if __closest_point_in_map_frame (setq _closest_point_in_map_frame (car __closest_point_in_map_frame)))
       _closest_point_in_map_frame)))
  (:closest_point_in_fixed_frame
   (&rest __closest_point_in_fixed_frame)
   (if (keywordp (car __closest_point_in_fixed_frame))
       (send* _closest_point_in_fixed_frame __closest_point_in_fixed_frame)
     (progn
       (if __closest_point_in_fixed_frame (setq _closest_point_in_fixed_frame (car __closest_point_in_fixed_frame)))
       _closest_point_in_fixed_frame)))
  (:closest_point_in_base_frame
   (&rest __closest_point_in_base_frame)
   (if (keywordp (car __closest_point_in_base_frame))
       (send* _closest_point_in_base_frame __closest_point_in_base_frame)
     (progn
       (if __closest_point_in_base_frame (setq _closest_point_in_base_frame (car __closest_point_in_base_frame)))
       _closest_point_in_base_frame)))
  (:closest_point
   (&rest __closest_point)
   (if (keywordp (car __closest_point))
       (send* _closest_point __closest_point)
     (progn
       (if __closest_point (setq _closest_point (car __closest_point)))
       _closest_point)))
  (:closest_distance
   (&optional __closest_distance)
   (if __closest_distance (setq _closest_distance __closest_distance)) _closest_distance)
  (:angle_for_closest_distance
   (&optional __angle_for_closest_distance)
   (if __angle_for_closest_distance (setq _angle_for_closest_distance __angle_for_closest_distance)) _angle_for_closest_distance)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _map_frame
    4 (length _map_frame)
    ;; string _fixed_frame
    4 (length _fixed_frame)
    ;; string _base_frame
    4 (length _base_frame)
    ;; float64 _seen_width
    8
    ;; float64 _angle_begin
    8
    ;; float64 _angle_end
    8
    ;; float64 _distance_at_angle_begin
    8
    ;; float64 _distance_at_angle_end
    8
    ;; float64 _distance
    8
    ;; geometry_msgs/Point _position_in_map_frame
    (send _position_in_map_frame :serialization-length)
    ;; geometry_msgs/Point _position_in_fixed_frame
    (send _position_in_fixed_frame :serialization-length)
    ;; geometry_msgs/Point _position_in_base_frame
    (send _position_in_base_frame :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_in_map_frame
    (send _velocity_in_map_frame :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_in_fixed_frame
    (send _velocity_in_fixed_frame :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_in_base_frame
    (send _velocity_in_base_frame :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_normalized_in_map_frame
    (send _velocity_normalized_in_map_frame :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_normalized_in_fixed_frame
    (send _velocity_normalized_in_fixed_frame :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_normalized_in_base_frame
    (send _velocity_normalized_in_base_frame :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_normalized
    (send _velocity_normalized :serialization-length)
    ;; float64 _speed_in_map_frame
    8
    ;; float64 _speed_in_fixed_frame
    8
    ;; float64 _speed_in_base_frame
    8
    ;; float64 _speed
    8
    ;; geometry_msgs/Point _closest_point_in_map_frame
    (send _closest_point_in_map_frame :serialization-length)
    ;; geometry_msgs/Point _closest_point_in_fixed_frame
    (send _closest_point_in_fixed_frame :serialization-length)
    ;; geometry_msgs/Point _closest_point_in_base_frame
    (send _closest_point_in_base_frame :serialization-length)
    ;; geometry_msgs/Point _closest_point
    (send _closest_point :serialization-length)
    ;; float64 _closest_distance
    8
    ;; float64 _angle_for_closest_distance
    8
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _map_frame
       (write-long (length _map_frame) s) (princ _map_frame s)
     ;; string _fixed_frame
       (write-long (length _fixed_frame) s) (princ _fixed_frame s)
     ;; string _base_frame
       (write-long (length _base_frame) s) (princ _base_frame s)
     ;; float64 _seen_width
       (sys::poke _seen_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_begin
       (sys::poke _angle_begin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_end
       (sys::poke _angle_end (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_at_angle_begin
       (sys::poke _distance_at_angle_begin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_at_angle_end
       (sys::poke _distance_at_angle_end (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _position_in_map_frame
       (send _position_in_map_frame :serialize s)
     ;; geometry_msgs/Point _position_in_fixed_frame
       (send _position_in_fixed_frame :serialize s)
     ;; geometry_msgs/Point _position_in_base_frame
       (send _position_in_base_frame :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity_in_map_frame
       (send _velocity_in_map_frame :serialize s)
     ;; geometry_msgs/Vector3 _velocity_in_fixed_frame
       (send _velocity_in_fixed_frame :serialize s)
     ;; geometry_msgs/Vector3 _velocity_in_base_frame
       (send _velocity_in_base_frame :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _velocity_normalized_in_map_frame
       (send _velocity_normalized_in_map_frame :serialize s)
     ;; geometry_msgs/Vector3 _velocity_normalized_in_fixed_frame
       (send _velocity_normalized_in_fixed_frame :serialize s)
     ;; geometry_msgs/Vector3 _velocity_normalized_in_base_frame
       (send _velocity_normalized_in_base_frame :serialize s)
     ;; geometry_msgs/Vector3 _velocity_normalized
       (send _velocity_normalized :serialize s)
     ;; float64 _speed_in_map_frame
       (sys::poke _speed_in_map_frame (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_in_fixed_frame
       (sys::poke _speed_in_fixed_frame (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_in_base_frame
       (sys::poke _speed_in_base_frame (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _closest_point_in_map_frame
       (send _closest_point_in_map_frame :serialize s)
     ;; geometry_msgs/Point _closest_point_in_fixed_frame
       (send _closest_point_in_fixed_frame :serialize s)
     ;; geometry_msgs/Point _closest_point_in_base_frame
       (send _closest_point_in_base_frame :serialize s)
     ;; geometry_msgs/Point _closest_point
       (send _closest_point :serialize s)
     ;; float64 _closest_distance
       (sys::poke _closest_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_for_closest_distance
       (sys::poke _angle_for_closest_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _map_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _fixed_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fixed_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _seen_width
     (setq _seen_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_begin
     (setq _angle_begin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_end
     (setq _angle_end (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_at_angle_begin
     (setq _distance_at_angle_begin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_at_angle_end
     (setq _distance_at_angle_end (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _position_in_map_frame
     (send _position_in_map_frame :deserialize buf ptr-) (incf ptr- (send _position_in_map_frame :serialization-length))
   ;; geometry_msgs/Point _position_in_fixed_frame
     (send _position_in_fixed_frame :deserialize buf ptr-) (incf ptr- (send _position_in_fixed_frame :serialization-length))
   ;; geometry_msgs/Point _position_in_base_frame
     (send _position_in_base_frame :deserialize buf ptr-) (incf ptr- (send _position_in_base_frame :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_in_map_frame
     (send _velocity_in_map_frame :deserialize buf ptr-) (incf ptr- (send _velocity_in_map_frame :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_in_fixed_frame
     (send _velocity_in_fixed_frame :deserialize buf ptr-) (incf ptr- (send _velocity_in_fixed_frame :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_in_base_frame
     (send _velocity_in_base_frame :deserialize buf ptr-) (incf ptr- (send _velocity_in_base_frame :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_normalized_in_map_frame
     (send _velocity_normalized_in_map_frame :deserialize buf ptr-) (incf ptr- (send _velocity_normalized_in_map_frame :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_normalized_in_fixed_frame
     (send _velocity_normalized_in_fixed_frame :deserialize buf ptr-) (incf ptr- (send _velocity_normalized_in_fixed_frame :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_normalized_in_base_frame
     (send _velocity_normalized_in_base_frame :deserialize buf ptr-) (incf ptr- (send _velocity_normalized_in_base_frame :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_normalized
     (send _velocity_normalized :deserialize buf ptr-) (incf ptr- (send _velocity_normalized :serialization-length))
   ;; float64 _speed_in_map_frame
     (setq _speed_in_map_frame (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_in_fixed_frame
     (setq _speed_in_fixed_frame (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_in_base_frame
     (setq _speed_in_base_frame (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _closest_point_in_map_frame
     (send _closest_point_in_map_frame :deserialize buf ptr-) (incf ptr- (send _closest_point_in_map_frame :serialization-length))
   ;; geometry_msgs/Point _closest_point_in_fixed_frame
     (send _closest_point_in_fixed_frame :deserialize buf ptr-) (incf ptr- (send _closest_point_in_fixed_frame :serialization-length))
   ;; geometry_msgs/Point _closest_point_in_base_frame
     (send _closest_point_in_base_frame :deserialize buf ptr-) (incf ptr- (send _closest_point_in_base_frame :serialization-length))
   ;; geometry_msgs/Point _closest_point
     (send _closest_point :deserialize buf ptr-) (incf ptr- (send _closest_point :serialization-length))
   ;; float64 _closest_distance
     (setq _closest_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_for_closest_distance
     (setq _angle_for_closest_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get find_moving_objects::MovingObject :md5sum-) "471d2ca009fdd96d2081f5d9404ce5d6")
(setf (get find_moving_objects::MovingObject :datatype-) "find_moving_objects/MovingObject")
(setf (get find_moving_objects::MovingObject :definition-)
      "# stamp is the time at which the sensor scanned this 
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



(provide :find_moving_objects/MovingObject "471d2ca009fdd96d2081f5d9404ce5d6")


