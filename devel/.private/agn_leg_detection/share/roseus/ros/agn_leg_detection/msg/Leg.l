;; Auto-generated. Do not edit!


(when (boundp 'agn_leg_detection::Leg)
  (if (not (find-package "AGN_LEG_DETECTION"))
    (make-package "AGN_LEG_DETECTION"))
  (shadow 'Leg (find-package "AGN_LEG_DETECTION")))
(unless (find-package "AGN_LEG_DETECTION::LEG")
  (make-package "AGN_LEG_DETECTION::LEG"))

(in-package "ROS")
;;//! \htmlinclude Leg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agn_leg_detection::Leg
  :super ros::object
  :slots (_pose ))

(defmethod agn_leg_detection::Leg
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get agn_leg_detection::Leg :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get agn_leg_detection::Leg :datatype-) "agn_leg_detection/Leg")
(setf (get agn_leg_detection::Leg :definition-)
      "geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :agn_leg_detection/Leg "f192399f711a48924df9a394d37edd67")


