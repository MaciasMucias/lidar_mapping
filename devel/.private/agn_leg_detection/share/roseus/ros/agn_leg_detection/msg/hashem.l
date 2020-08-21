;; Auto-generated. Do not edit!


(when (boundp 'agn_leg_detection::hashem)
  (if (not (find-package "AGN_LEG_DETECTION"))
    (make-package "AGN_LEG_DETECTION"))
  (shadow 'hashem (find-package "AGN_LEG_DETECTION")))
(unless (find-package "AGN_LEG_DETECTION::HASHEM")
  (make-package "AGN_LEG_DETECTION::HASHEM"))

(in-package "ROS")
;;//! \htmlinclude hashem.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agn_leg_detection::hashem
  :super ros::object
  :slots (_listtosend ))

(defmethod agn_leg_detection::hashem
  (:init
   (&key
    ((:listtosend __listtosend) (let (r) (dotimes (i 0) (push (instance std_msgs::Float32 :init) r)) r))
    )
   (send-super :init)
   (setq _listtosend __listtosend)
   self)
  (:listtosend
   (&rest __listtosend)
   (if (keywordp (car __listtosend))
       (send* _listtosend __listtosend)
     (progn
       (if __listtosend (setq _listtosend (car __listtosend)))
       _listtosend)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32[] _listtosend
    (apply #'+ (send-all _listtosend :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32[] _listtosend
     (write-long (length _listtosend) s)
     (dolist (elem _listtosend)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32[] _listtosend
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _listtosend (let (r) (dotimes (i n) (push (instance std_msgs::Float32 :init) r)) r))
     (dolist (elem- _listtosend)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agn_leg_detection::hashem :md5sum-) "c9210d52caeda3a0513264e2e2ed87c8")
(setf (get agn_leg_detection::hashem :datatype-) "agn_leg_detection/hashem")
(setf (get agn_leg_detection::hashem :definition-)
      "std_msgs/Float32[] listtosend

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :agn_leg_detection/hashem "c9210d52caeda3a0513264e2e2ed87c8")


