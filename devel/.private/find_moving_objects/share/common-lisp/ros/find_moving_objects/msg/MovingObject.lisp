; Auto-generated. Do not edit!


(cl:in-package find_moving_objects-msg)


;//! \htmlinclude MovingObject.msg.html

(cl:defclass <MovingObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (map_frame
    :reader map_frame
    :initarg :map_frame
    :type cl:string
    :initform "")
   (fixed_frame
    :reader fixed_frame
    :initarg :fixed_frame
    :type cl:string
    :initform "")
   (base_frame
    :reader base_frame
    :initarg :base_frame
    :type cl:string
    :initform "")
   (seen_width
    :reader seen_width
    :initarg :seen_width
    :type cl:float
    :initform 0.0)
   (angle_begin
    :reader angle_begin
    :initarg :angle_begin
    :type cl:float
    :initform 0.0)
   (angle_end
    :reader angle_end
    :initarg :angle_end
    :type cl:float
    :initform 0.0)
   (distance_at_angle_begin
    :reader distance_at_angle_begin
    :initarg :distance_at_angle_begin
    :type cl:float
    :initform 0.0)
   (distance_at_angle_end
    :reader distance_at_angle_end
    :initarg :distance_at_angle_end
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (position_in_map_frame
    :reader position_in_map_frame
    :initarg :position_in_map_frame
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position_in_fixed_frame
    :reader position_in_fixed_frame
    :initarg :position_in_fixed_frame
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position_in_base_frame
    :reader position_in_base_frame
    :initarg :position_in_base_frame
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity_in_map_frame
    :reader velocity_in_map_frame
    :initarg :velocity_in_map_frame
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_in_fixed_frame
    :reader velocity_in_fixed_frame
    :initarg :velocity_in_fixed_frame
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_in_base_frame
    :reader velocity_in_base_frame
    :initarg :velocity_in_base_frame
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_normalized_in_map_frame
    :reader velocity_normalized_in_map_frame
    :initarg :velocity_normalized_in_map_frame
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_normalized_in_fixed_frame
    :reader velocity_normalized_in_fixed_frame
    :initarg :velocity_normalized_in_fixed_frame
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_normalized_in_base_frame
    :reader velocity_normalized_in_base_frame
    :initarg :velocity_normalized_in_base_frame
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_normalized
    :reader velocity_normalized
    :initarg :velocity_normalized
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (speed_in_map_frame
    :reader speed_in_map_frame
    :initarg :speed_in_map_frame
    :type cl:float
    :initform 0.0)
   (speed_in_fixed_frame
    :reader speed_in_fixed_frame
    :initarg :speed_in_fixed_frame
    :type cl:float
    :initform 0.0)
   (speed_in_base_frame
    :reader speed_in_base_frame
    :initarg :speed_in_base_frame
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (closest_point_in_map_frame
    :reader closest_point_in_map_frame
    :initarg :closest_point_in_map_frame
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (closest_point_in_fixed_frame
    :reader closest_point_in_fixed_frame
    :initarg :closest_point_in_fixed_frame
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (closest_point_in_base_frame
    :reader closest_point_in_base_frame
    :initarg :closest_point_in_base_frame
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (closest_point
    :reader closest_point
    :initarg :closest_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (closest_distance
    :reader closest_distance
    :initarg :closest_distance
    :type cl:float
    :initform 0.0)
   (angle_for_closest_distance
    :reader angle_for_closest_distance
    :initarg :angle_for_closest_distance
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass MovingObject (<MovingObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name find_moving_objects-msg:<MovingObject> is deprecated: use find_moving_objects-msg:MovingObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:header-val is deprecated.  Use find_moving_objects-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'map_frame-val :lambda-list '(m))
(cl:defmethod map_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:map_frame-val is deprecated.  Use find_moving_objects-msg:map_frame instead.")
  (map_frame m))

(cl:ensure-generic-function 'fixed_frame-val :lambda-list '(m))
(cl:defmethod fixed_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:fixed_frame-val is deprecated.  Use find_moving_objects-msg:fixed_frame instead.")
  (fixed_frame m))

(cl:ensure-generic-function 'base_frame-val :lambda-list '(m))
(cl:defmethod base_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:base_frame-val is deprecated.  Use find_moving_objects-msg:base_frame instead.")
  (base_frame m))

(cl:ensure-generic-function 'seen_width-val :lambda-list '(m))
(cl:defmethod seen_width-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:seen_width-val is deprecated.  Use find_moving_objects-msg:seen_width instead.")
  (seen_width m))

(cl:ensure-generic-function 'angle_begin-val :lambda-list '(m))
(cl:defmethod angle_begin-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:angle_begin-val is deprecated.  Use find_moving_objects-msg:angle_begin instead.")
  (angle_begin m))

(cl:ensure-generic-function 'angle_end-val :lambda-list '(m))
(cl:defmethod angle_end-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:angle_end-val is deprecated.  Use find_moving_objects-msg:angle_end instead.")
  (angle_end m))

(cl:ensure-generic-function 'distance_at_angle_begin-val :lambda-list '(m))
(cl:defmethod distance_at_angle_begin-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:distance_at_angle_begin-val is deprecated.  Use find_moving_objects-msg:distance_at_angle_begin instead.")
  (distance_at_angle_begin m))

(cl:ensure-generic-function 'distance_at_angle_end-val :lambda-list '(m))
(cl:defmethod distance_at_angle_end-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:distance_at_angle_end-val is deprecated.  Use find_moving_objects-msg:distance_at_angle_end instead.")
  (distance_at_angle_end m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:distance-val is deprecated.  Use find_moving_objects-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'position_in_map_frame-val :lambda-list '(m))
(cl:defmethod position_in_map_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:position_in_map_frame-val is deprecated.  Use find_moving_objects-msg:position_in_map_frame instead.")
  (position_in_map_frame m))

(cl:ensure-generic-function 'position_in_fixed_frame-val :lambda-list '(m))
(cl:defmethod position_in_fixed_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:position_in_fixed_frame-val is deprecated.  Use find_moving_objects-msg:position_in_fixed_frame instead.")
  (position_in_fixed_frame m))

(cl:ensure-generic-function 'position_in_base_frame-val :lambda-list '(m))
(cl:defmethod position_in_base_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:position_in_base_frame-val is deprecated.  Use find_moving_objects-msg:position_in_base_frame instead.")
  (position_in_base_frame m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:position-val is deprecated.  Use find_moving_objects-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity_in_map_frame-val :lambda-list '(m))
(cl:defmethod velocity_in_map_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_in_map_frame-val is deprecated.  Use find_moving_objects-msg:velocity_in_map_frame instead.")
  (velocity_in_map_frame m))

(cl:ensure-generic-function 'velocity_in_fixed_frame-val :lambda-list '(m))
(cl:defmethod velocity_in_fixed_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_in_fixed_frame-val is deprecated.  Use find_moving_objects-msg:velocity_in_fixed_frame instead.")
  (velocity_in_fixed_frame m))

(cl:ensure-generic-function 'velocity_in_base_frame-val :lambda-list '(m))
(cl:defmethod velocity_in_base_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_in_base_frame-val is deprecated.  Use find_moving_objects-msg:velocity_in_base_frame instead.")
  (velocity_in_base_frame m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity-val is deprecated.  Use find_moving_objects-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'velocity_normalized_in_map_frame-val :lambda-list '(m))
(cl:defmethod velocity_normalized_in_map_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_normalized_in_map_frame-val is deprecated.  Use find_moving_objects-msg:velocity_normalized_in_map_frame instead.")
  (velocity_normalized_in_map_frame m))

(cl:ensure-generic-function 'velocity_normalized_in_fixed_frame-val :lambda-list '(m))
(cl:defmethod velocity_normalized_in_fixed_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_normalized_in_fixed_frame-val is deprecated.  Use find_moving_objects-msg:velocity_normalized_in_fixed_frame instead.")
  (velocity_normalized_in_fixed_frame m))

(cl:ensure-generic-function 'velocity_normalized_in_base_frame-val :lambda-list '(m))
(cl:defmethod velocity_normalized_in_base_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_normalized_in_base_frame-val is deprecated.  Use find_moving_objects-msg:velocity_normalized_in_base_frame instead.")
  (velocity_normalized_in_base_frame m))

(cl:ensure-generic-function 'velocity_normalized-val :lambda-list '(m))
(cl:defmethod velocity_normalized-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:velocity_normalized-val is deprecated.  Use find_moving_objects-msg:velocity_normalized instead.")
  (velocity_normalized m))

(cl:ensure-generic-function 'speed_in_map_frame-val :lambda-list '(m))
(cl:defmethod speed_in_map_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:speed_in_map_frame-val is deprecated.  Use find_moving_objects-msg:speed_in_map_frame instead.")
  (speed_in_map_frame m))

(cl:ensure-generic-function 'speed_in_fixed_frame-val :lambda-list '(m))
(cl:defmethod speed_in_fixed_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:speed_in_fixed_frame-val is deprecated.  Use find_moving_objects-msg:speed_in_fixed_frame instead.")
  (speed_in_fixed_frame m))

(cl:ensure-generic-function 'speed_in_base_frame-val :lambda-list '(m))
(cl:defmethod speed_in_base_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:speed_in_base_frame-val is deprecated.  Use find_moving_objects-msg:speed_in_base_frame instead.")
  (speed_in_base_frame m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:speed-val is deprecated.  Use find_moving_objects-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'closest_point_in_map_frame-val :lambda-list '(m))
(cl:defmethod closest_point_in_map_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:closest_point_in_map_frame-val is deprecated.  Use find_moving_objects-msg:closest_point_in_map_frame instead.")
  (closest_point_in_map_frame m))

(cl:ensure-generic-function 'closest_point_in_fixed_frame-val :lambda-list '(m))
(cl:defmethod closest_point_in_fixed_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:closest_point_in_fixed_frame-val is deprecated.  Use find_moving_objects-msg:closest_point_in_fixed_frame instead.")
  (closest_point_in_fixed_frame m))

(cl:ensure-generic-function 'closest_point_in_base_frame-val :lambda-list '(m))
(cl:defmethod closest_point_in_base_frame-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:closest_point_in_base_frame-val is deprecated.  Use find_moving_objects-msg:closest_point_in_base_frame instead.")
  (closest_point_in_base_frame m))

(cl:ensure-generic-function 'closest_point-val :lambda-list '(m))
(cl:defmethod closest_point-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:closest_point-val is deprecated.  Use find_moving_objects-msg:closest_point instead.")
  (closest_point m))

(cl:ensure-generic-function 'closest_distance-val :lambda-list '(m))
(cl:defmethod closest_distance-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:closest_distance-val is deprecated.  Use find_moving_objects-msg:closest_distance instead.")
  (closest_distance m))

(cl:ensure-generic-function 'angle_for_closest_distance-val :lambda-list '(m))
(cl:defmethod angle_for_closest_distance-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:angle_for_closest_distance-val is deprecated.  Use find_moving_objects-msg:angle_for_closest_distance instead.")
  (angle_for_closest_distance m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <MovingObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader find_moving_objects-msg:confidence-val is deprecated.  Use find_moving_objects-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingObject>) ostream)
  "Serializes a message object of type '<MovingObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fixed_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fixed_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_frame))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'seen_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_begin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_at_angle_begin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_at_angle_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_in_map_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_in_fixed_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_in_base_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_in_map_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_in_fixed_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_in_base_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_normalized_in_map_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_normalized_in_fixed_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_normalized_in_base_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_normalized) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_in_map_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_in_fixed_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_in_base_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'closest_point_in_map_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'closest_point_in_fixed_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'closest_point_in_base_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'closest_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'closest_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_for_closest_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingObject>) istream)
  "Deserializes a message object of type '<MovingObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fixed_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fixed_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'seen_width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_begin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_end) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_at_angle_begin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_at_angle_end) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_in_map_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_in_fixed_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_in_base_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_in_map_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_in_fixed_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_in_base_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_normalized_in_map_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_normalized_in_fixed_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_normalized_in_base_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_normalized) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_in_map_frame) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_in_fixed_frame) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_in_base_frame) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'closest_point_in_map_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'closest_point_in_fixed_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'closest_point_in_base_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'closest_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_for_closest_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingObject>)))
  "Returns string type for a message object of type '<MovingObject>"
  "find_moving_objects/MovingObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingObject)))
  "Returns string type for a message object of type 'MovingObject"
  "find_moving_objects/MovingObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingObject>)))
  "Returns md5sum for a message object of type '<MovingObject>"
  "471d2ca009fdd96d2081f5d9404ce5d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingObject)))
  "Returns md5sum for a message object of type 'MovingObject"
  "471d2ca009fdd96d2081f5d9404ce5d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingObject>)))
  "Returns full string definition for message of type '<MovingObject>"
  (cl:format cl:nil "# stamp is the time at which the sensor scanned this ~%# object. ~%# frame_id is the frame (i.e. coordinate system) of the ~%# sensor - this is the frame in which the given relative ~%# information below (the variables position, velocity, ~%# speed, angle_* etc.) is valid.~%# seq is not really used.~%Header header~%~%# The frame which is considered world-fixed and never ~%# moves. Note that the robot's position in this frame ~%# can be discontinuous.~%# The variables *_in_map_frame below are specified in ~%# this frame.~%string map_frame~%~%# The frame in which the movement of the robot is always~%# continuous and in which all transforms are made.~%# The variables *_in_fixed_frame below are ~%# specified in this frame.~%string fixed_frame~%~%# The frame which is considered fixed on the robot and ~%# in which the variables *_in_base_frame below are~%# specified.~%string base_frame~%~%# The width of the object as seen by the given ~%# sensor (calculated based on angle_begin, angle_end,~%# distance_angle_begin and distance_angle_end as ~%# given below using the law of cosine).~%float64 seen_width~%~%# In frame header.frame_id, angles are measured around ~%# the positive Z axis (counterclockwise; Z is pointing up)~%# with zero angle being forward along the x axis, provided~%# that the frame is not an optical/camera frame.~%# In case of an optical frame (Z is pointing forward and Y~%# is pointing down), then angles are measured around the ~%# negative Y axis.~%# The angles given specify where the object is to be~%# found in the frame header.frame_id (this is thus ~%# relative to the X-axis of the sensor in a regular frame~%# and relative the Z-axis, but negated, in an optical frame).~%float64 angle_begin~%float64 angle_end~%~%# The scanned distances to the object's end points as ~%# specified by angle_begin and angle_end.~%float64 distance_at_angle_begin~%float64 distance_at_angle_end~%~%# The averaged distance (approximated to be at ~%# (angle_begin+angle_end)/2) from the sensor to the seen~%# object.~%float64 distance~%~%# Position and velocity of the object.~%geometry_msgs/Point position_in_map_frame~%geometry_msgs/Point position_in_fixed_frame~%geometry_msgs/Point position_in_base_frame~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity_in_map_frame~%geometry_msgs/Vector3 velocity_in_fixed_frame~%geometry_msgs/Vector3 velocity_in_base_frame~%geometry_msgs/Vector3 velocity~%~%# For convenience, the normalized velocity vector is~%# also given, along with the scale factor (speed).~%geometry_msgs/Vector3 velocity_normalized_in_map_frame~%geometry_msgs/Vector3 velocity_normalized_in_fixed_frame~%geometry_msgs/Vector3 velocity_normalized_in_base_frame~%geometry_msgs/Vector3 velocity_normalized~%float64 speed_in_map_frame~%float64 speed_in_fixed_frame~%float64 speed_in_base_frame~%float64 speed~%~%# The point on the object closest to the sensor.~%geometry_msgs/Point closest_point_in_map_frame~%geometry_msgs/Point closest_point_in_fixed_frame~%geometry_msgs/Point closest_point_in_base_frame~%geometry_msgs/Point closest_point~%~%# For convenience, the distance from the sensor to the ~%# closest point on the object and at what angle it is to ~%# be found in relation to the sensor (i.e. ~%# header.frame_id).~%float64 closest_distance~%float64 angle_for_closest_distance~%~%# A measure on how confident the sending node is about ~%# the specified information.~%float64 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingObject)))
  "Returns full string definition for message of type 'MovingObject"
  (cl:format cl:nil "# stamp is the time at which the sensor scanned this ~%# object. ~%# frame_id is the frame (i.e. coordinate system) of the ~%# sensor - this is the frame in which the given relative ~%# information below (the variables position, velocity, ~%# speed, angle_* etc.) is valid.~%# seq is not really used.~%Header header~%~%# The frame which is considered world-fixed and never ~%# moves. Note that the robot's position in this frame ~%# can be discontinuous.~%# The variables *_in_map_frame below are specified in ~%# this frame.~%string map_frame~%~%# The frame in which the movement of the robot is always~%# continuous and in which all transforms are made.~%# The variables *_in_fixed_frame below are ~%# specified in this frame.~%string fixed_frame~%~%# The frame which is considered fixed on the robot and ~%# in which the variables *_in_base_frame below are~%# specified.~%string base_frame~%~%# The width of the object as seen by the given ~%# sensor (calculated based on angle_begin, angle_end,~%# distance_angle_begin and distance_angle_end as ~%# given below using the law of cosine).~%float64 seen_width~%~%# In frame header.frame_id, angles are measured around ~%# the positive Z axis (counterclockwise; Z is pointing up)~%# with zero angle being forward along the x axis, provided~%# that the frame is not an optical/camera frame.~%# In case of an optical frame (Z is pointing forward and Y~%# is pointing down), then angles are measured around the ~%# negative Y axis.~%# The angles given specify where the object is to be~%# found in the frame header.frame_id (this is thus ~%# relative to the X-axis of the sensor in a regular frame~%# and relative the Z-axis, but negated, in an optical frame).~%float64 angle_begin~%float64 angle_end~%~%# The scanned distances to the object's end points as ~%# specified by angle_begin and angle_end.~%float64 distance_at_angle_begin~%float64 distance_at_angle_end~%~%# The averaged distance (approximated to be at ~%# (angle_begin+angle_end)/2) from the sensor to the seen~%# object.~%float64 distance~%~%# Position and velocity of the object.~%geometry_msgs/Point position_in_map_frame~%geometry_msgs/Point position_in_fixed_frame~%geometry_msgs/Point position_in_base_frame~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity_in_map_frame~%geometry_msgs/Vector3 velocity_in_fixed_frame~%geometry_msgs/Vector3 velocity_in_base_frame~%geometry_msgs/Vector3 velocity~%~%# For convenience, the normalized velocity vector is~%# also given, along with the scale factor (speed).~%geometry_msgs/Vector3 velocity_normalized_in_map_frame~%geometry_msgs/Vector3 velocity_normalized_in_fixed_frame~%geometry_msgs/Vector3 velocity_normalized_in_base_frame~%geometry_msgs/Vector3 velocity_normalized~%float64 speed_in_map_frame~%float64 speed_in_fixed_frame~%float64 speed_in_base_frame~%float64 speed~%~%# The point on the object closest to the sensor.~%geometry_msgs/Point closest_point_in_map_frame~%geometry_msgs/Point closest_point_in_fixed_frame~%geometry_msgs/Point closest_point_in_base_frame~%geometry_msgs/Point closest_point~%~%# For convenience, the distance from the sensor to the ~%# closest point on the object and at what angle it is to ~%# be found in relation to the sensor (i.e. ~%# header.frame_id).~%float64 closest_distance~%float64 angle_for_closest_distance~%~%# A measure on how confident the sending node is about ~%# the specified information.~%float64 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'map_frame))
     4 (cl:length (cl:slot-value msg 'fixed_frame))
     4 (cl:length (cl:slot-value msg 'base_frame))
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_in_map_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_in_fixed_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_in_base_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_in_map_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_in_fixed_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_in_base_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_normalized_in_map_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_normalized_in_fixed_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_normalized_in_base_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_normalized))
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'closest_point_in_map_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'closest_point_in_fixed_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'closest_point_in_base_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'closest_point))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingObject>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingObject
    (cl:cons ':header (header msg))
    (cl:cons ':map_frame (map_frame msg))
    (cl:cons ':fixed_frame (fixed_frame msg))
    (cl:cons ':base_frame (base_frame msg))
    (cl:cons ':seen_width (seen_width msg))
    (cl:cons ':angle_begin (angle_begin msg))
    (cl:cons ':angle_end (angle_end msg))
    (cl:cons ':distance_at_angle_begin (distance_at_angle_begin msg))
    (cl:cons ':distance_at_angle_end (distance_at_angle_end msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':position_in_map_frame (position_in_map_frame msg))
    (cl:cons ':position_in_fixed_frame (position_in_fixed_frame msg))
    (cl:cons ':position_in_base_frame (position_in_base_frame msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity_in_map_frame (velocity_in_map_frame msg))
    (cl:cons ':velocity_in_fixed_frame (velocity_in_fixed_frame msg))
    (cl:cons ':velocity_in_base_frame (velocity_in_base_frame msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':velocity_normalized_in_map_frame (velocity_normalized_in_map_frame msg))
    (cl:cons ':velocity_normalized_in_fixed_frame (velocity_normalized_in_fixed_frame msg))
    (cl:cons ':velocity_normalized_in_base_frame (velocity_normalized_in_base_frame msg))
    (cl:cons ':velocity_normalized (velocity_normalized msg))
    (cl:cons ':speed_in_map_frame (speed_in_map_frame msg))
    (cl:cons ':speed_in_fixed_frame (speed_in_fixed_frame msg))
    (cl:cons ':speed_in_base_frame (speed_in_base_frame msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':closest_point_in_map_frame (closest_point_in_map_frame msg))
    (cl:cons ':closest_point_in_fixed_frame (closest_point_in_fixed_frame msg))
    (cl:cons ':closest_point_in_base_frame (closest_point_in_base_frame msg))
    (cl:cons ':closest_point (closest_point msg))
    (cl:cons ':closest_distance (closest_distance msg))
    (cl:cons ':angle_for_closest_distance (angle_for_closest_distance msg))
    (cl:cons ':confidence (confidence msg))
))
