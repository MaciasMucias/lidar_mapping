;; Auto-generated. Do not edit!


(when (boundp 'socket_manager::GetDistanceFromWall)
  (if (not (find-package "SOCKET_MANAGER"))
    (make-package "SOCKET_MANAGER"))
  (shadow 'GetDistanceFromWall (find-package "SOCKET_MANAGER")))
(unless (find-package "SOCKET_MANAGER::GETDISTANCEFROMWALL")
  (make-package "SOCKET_MANAGER::GETDISTANCEFROMWALL"))
(unless (find-package "SOCKET_MANAGER::GETDISTANCEFROMWALLREQUEST")
  (make-package "SOCKET_MANAGER::GETDISTANCEFROMWALLREQUEST"))
(unless (find-package "SOCKET_MANAGER::GETDISTANCEFROMWALLRESPONSE")
  (make-package "SOCKET_MANAGER::GETDISTANCEFROMWALLRESPONSE"))

(in-package "ROS")





(defclass socket_manager::GetDistanceFromWallRequest
  :super ros::object
  :slots ())

(defmethod socket_manager::GetDistanceFromWallRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass socket_manager::GetDistanceFromWallResponse
  :super ros::object
  :slots (_distance _angle ))

(defmethod socket_manager::GetDistanceFromWallResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass socket_manager::GetDistanceFromWall
  :super ros::object
  :slots ())

(setf (get socket_manager::GetDistanceFromWall :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get socket_manager::GetDistanceFromWall :datatype-) "socket_manager/GetDistanceFromWall")
(setf (get socket_manager::GetDistanceFromWall :request) socket_manager::GetDistanceFromWallRequest)
(setf (get socket_manager::GetDistanceFromWall :response) socket_manager::GetDistanceFromWallResponse)

(defmethod socket_manager::GetDistanceFromWallRequest
  (:response () (instance socket_manager::GetDistanceFromWallResponse :init)))

(setf (get socket_manager::GetDistanceFromWallRequest :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get socket_manager::GetDistanceFromWallRequest :datatype-) "socket_manager/GetDistanceFromWallRequest")
(setf (get socket_manager::GetDistanceFromWallRequest :definition-)
      "---
float64 distance
float64 angle
")

(setf (get socket_manager::GetDistanceFromWallResponse :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get socket_manager::GetDistanceFromWallResponse :datatype-) "socket_manager/GetDistanceFromWallResponse")
(setf (get socket_manager::GetDistanceFromWallResponse :definition-)
      "---
float64 distance
float64 angle
")



(provide :socket_manager/GetDistanceFromWall "1f1d53743f4592ee455aa3eaf9019457")


