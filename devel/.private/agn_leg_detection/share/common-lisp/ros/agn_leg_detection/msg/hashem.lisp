; Auto-generated. Do not edit!


(cl:in-package agn_leg_detection-msg)


;//! \htmlinclude hashem.msg.html

(cl:defclass <hashem> (roslisp-msg-protocol:ros-message)
  ((listtosend
    :reader listtosend
    :initarg :listtosend
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32))))
)

(cl:defclass hashem (<hashem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hashem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hashem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agn_leg_detection-msg:<hashem> is deprecated: use agn_leg_detection-msg:hashem instead.")))

(cl:ensure-generic-function 'listtosend-val :lambda-list '(m))
(cl:defmethod listtosend-val ((m <hashem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agn_leg_detection-msg:listtosend-val is deprecated.  Use agn_leg_detection-msg:listtosend instead.")
  (listtosend m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hashem>) ostream)
  "Serializes a message object of type '<hashem>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'listtosend))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'listtosend))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hashem>) istream)
  "Deserializes a message object of type '<hashem>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'listtosend) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'listtosend)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hashem>)))
  "Returns string type for a message object of type '<hashem>"
  "agn_leg_detection/hashem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hashem)))
  "Returns string type for a message object of type 'hashem"
  "agn_leg_detection/hashem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hashem>)))
  "Returns md5sum for a message object of type '<hashem>"
  "c9210d52caeda3a0513264e2e2ed87c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hashem)))
  "Returns md5sum for a message object of type 'hashem"
  "c9210d52caeda3a0513264e2e2ed87c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hashem>)))
  "Returns full string definition for message of type '<hashem>"
  (cl:format cl:nil "std_msgs/Float32[] listtosend~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hashem)))
  "Returns full string definition for message of type 'hashem"
  (cl:format cl:nil "std_msgs/Float32[] listtosend~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hashem>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'listtosend) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hashem>))
  "Converts a ROS message object to a list"
  (cl:list 'hashem
    (cl:cons ':listtosend (listtosend msg))
))
