; Auto-generated. Do not edit!


(cl:in-package socket_manager-srv)


;//! \htmlinclude GetDistanceFromWall-request.msg.html

(cl:defclass <GetDistanceFromWall-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDistanceFromWall-request (<GetDistanceFromWall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistanceFromWall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistanceFromWall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name socket_manager-srv:<GetDistanceFromWall-request> is deprecated: use socket_manager-srv:GetDistanceFromWall-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistanceFromWall-request>) ostream)
  "Serializes a message object of type '<GetDistanceFromWall-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistanceFromWall-request>) istream)
  "Deserializes a message object of type '<GetDistanceFromWall-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistanceFromWall-request>)))
  "Returns string type for a service object of type '<GetDistanceFromWall-request>"
  "socket_manager/GetDistanceFromWallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceFromWall-request)))
  "Returns string type for a service object of type 'GetDistanceFromWall-request"
  "socket_manager/GetDistanceFromWallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistanceFromWall-request>)))
  "Returns md5sum for a message object of type '<GetDistanceFromWall-request>"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistanceFromWall-request)))
  "Returns md5sum for a message object of type 'GetDistanceFromWall-request"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistanceFromWall-request>)))
  "Returns full string definition for message of type '<GetDistanceFromWall-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistanceFromWall-request)))
  "Returns full string definition for message of type 'GetDistanceFromWall-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistanceFromWall-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistanceFromWall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistanceFromWall-request
))
;//! \htmlinclude GetDistanceFromWall-response.msg.html

(cl:defclass <GetDistanceFromWall-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetDistanceFromWall-response (<GetDistanceFromWall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistanceFromWall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistanceFromWall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name socket_manager-srv:<GetDistanceFromWall-response> is deprecated: use socket_manager-srv:GetDistanceFromWall-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <GetDistanceFromWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader socket_manager-srv:distance-val is deprecated.  Use socket_manager-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <GetDistanceFromWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader socket_manager-srv:angle-val is deprecated.  Use socket_manager-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistanceFromWall-response>) ostream)
  "Serializes a message object of type '<GetDistanceFromWall-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistanceFromWall-response>) istream)
  "Deserializes a message object of type '<GetDistanceFromWall-response>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistanceFromWall-response>)))
  "Returns string type for a service object of type '<GetDistanceFromWall-response>"
  "socket_manager/GetDistanceFromWallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceFromWall-response)))
  "Returns string type for a service object of type 'GetDistanceFromWall-response"
  "socket_manager/GetDistanceFromWallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistanceFromWall-response>)))
  "Returns md5sum for a message object of type '<GetDistanceFromWall-response>"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistanceFromWall-response)))
  "Returns md5sum for a message object of type 'GetDistanceFromWall-response"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistanceFromWall-response>)))
  "Returns full string definition for message of type '<GetDistanceFromWall-response>"
  (cl:format cl:nil "float64 distance~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistanceFromWall-response)))
  "Returns full string definition for message of type 'GetDistanceFromWall-response"
  (cl:format cl:nil "float64 distance~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistanceFromWall-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistanceFromWall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistanceFromWall-response
    (cl:cons ':distance (distance msg))
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDistanceFromWall)))
  'GetDistanceFromWall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDistanceFromWall)))
  'GetDistanceFromWall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceFromWall)))
  "Returns string type for a service object of type '<GetDistanceFromWall>"
  "socket_manager/GetDistanceFromWall")