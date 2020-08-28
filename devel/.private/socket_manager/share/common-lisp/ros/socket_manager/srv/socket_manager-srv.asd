
(cl:in-package :asdf)

(defsystem "socket_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetDistanceFromWall" :depends-on ("_package_GetDistanceFromWall"))
    (:file "_package_GetDistanceFromWall" :depends-on ("_package"))
  ))