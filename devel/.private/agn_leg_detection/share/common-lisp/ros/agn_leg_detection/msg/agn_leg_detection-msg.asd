
(cl:in-package :asdf)

(defsystem "agn_leg_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Leg" :depends-on ("_package_Leg"))
    (:file "_package_Leg" :depends-on ("_package"))
    (:file "Legs" :depends-on ("_package_Legs"))
    (:file "_package_Legs" :depends-on ("_package"))
    (:file "hashem" :depends-on ("_package_hashem"))
    (:file "_package_hashem" :depends-on ("_package"))
    (:file "legmsg" :depends-on ("_package_legmsg"))
    (:file "_package_legmsg" :depends-on ("_package"))
  ))