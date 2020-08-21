; Auto-generated. Do not edit!


(cl:in-package agn_leg_detection-msg)


;//! \htmlinclude Leg.msg.html

(cl:defclass <Leg> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Leg (<Leg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Leg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Leg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agn_leg_detection-msg:<Leg> is deprecated: use agn_leg_detection-msg:Leg instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Leg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agn_leg_detection-msg:pose-val is deprecated.  Use agn_leg_detection-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Leg>) ostream)
  "Serializes a message object of type '<Leg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Leg>) istream)
  "Deserializes a message object of type '<Leg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Leg>)))
  "Returns string type for a message object of type '<Leg>"
  "agn_leg_detection/Leg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Leg)))
  "Returns string type for a message object of type 'Leg"
  "agn_leg_detection/Leg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Leg>)))
  "Returns md5sum for a message object of type '<Leg>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Leg)))
  "Returns md5sum for a message object of type 'Leg"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Leg>)))
  "Returns full string definition for message of type '<Leg>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Leg)))
  "Returns full string definition for message of type 'Leg"
  (cl:format cl:nil "geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Leg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Leg>))
  "Converts a ROS message object to a list"
  (cl:list 'Leg
    (cl:cons ':pose (pose msg))
))
