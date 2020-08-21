
(cl:in-package :asdf)

(defsystem "find_moving_objects-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LaserScanArray" :depends-on ("_package_LaserScanArray"))
    (:file "_package_LaserScanArray" :depends-on ("_package"))
    (:file "MovingObject" :depends-on ("_package_MovingObject"))
    (:file "_package_MovingObject" :depends-on ("_package"))
    (:file "MovingObjectArray" :depends-on ("_package_MovingObjectArray"))
    (:file "_package_MovingObjectArray" :depends-on ("_package"))
    (:file "PointCloud2Array" :depends-on ("_package_PointCloud2Array"))
    (:file "_package_PointCloud2Array" :depends-on ("_package"))
  ))