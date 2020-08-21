;; Auto-generated. Do not edit!


(when (boundp 'agn_leg_detection::legmsg)
  (if (not (find-package "AGN_LEG_DETECTION"))
    (make-package "AGN_LEG_DETECTION"))
  (shadow 'legmsg (find-package "AGN_LEG_DETECTION")))
(unless (find-package "AGN_LEG_DETECTION::LEGMSG")
  (make-package "AGN_LEG_DETECTION::LEGMSG"))

(in-package "ROS")
;;//! \htmlinclude legmsg.msg.html


(defclass agn_leg_detection::legmsg
  :super ros::object
  :slots (_count _first _end ))

(defmethod agn_leg_detection::legmsg
  (:init
   (&key
    ((:count __count) (make-array 0 :initial-element 0 :element-type :integer))
    ((:first __first) 0)
    ((:end __end) 0)
    )
   (send-super :init)
   (setq _count __count)
   (setq _first (round __first))
   (setq _end (round __end))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; int64[] _count
    (* 8    (length _count)) 4
    ;; int64 _first
    8
    ;; int64 _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _count
     (write-long (length _count) s)
     (dotimes (i (length _count))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _count i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _count i)) (= (length ((elt _count i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _count i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _count i) . bv) 1) -1) s))
             ((and (class (elt _count i)) (= (length ((elt _count i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _count i) . bv) 0) s)
              (write-long (if (>= (elt _count i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _count i) s)(write-long (if (>= (elt _count i) 0) 0 #xffffffff) s)))
       )
     ;; int64 _first
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _first (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _first) (= (length (_first . bv)) 2)) ;; bignum
              (write-long (ash (elt (_first . bv) 0) 0) s)
              (write-long (ash (elt (_first . bv) 1) -1) s))
             ((and (class _first) (= (length (_first . bv)) 1)) ;; big1
              (write-long (elt (_first . bv) 0) s)
              (write-long (if (>= _first 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _first s)(write-long (if (>= _first 0) 0 #xffffffff) s)))
     ;; int64 _end
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _end (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _end) (= (length (_end . bv)) 2)) ;; bignum
              (write-long (ash (elt (_end . bv) 0) 0) s)
              (write-long (ash (elt (_end . bv) 1) -1) s))
             ((and (class _end) (= (length (_end . bv)) 1)) ;; big1
              (write-long (elt (_end . bv) 0) s)
              (write-long (if (>= _end 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _end s)(write-long (if (>= _end 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _count
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _count (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _count i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _count i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64 _first
#+(or :alpha :irix6 :x86_64)
      (setf _first (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _first (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _end
#+(or :alpha :irix6 :x86_64)
      (setf _end (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _end (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get agn_leg_detection::legmsg :md5sum-) "575cf73be3bb238f762d331a4b3c6e57")
(setf (get agn_leg_detection::legmsg :datatype-) "agn_leg_detection/legmsg")
(setf (get agn_leg_detection::legmsg :definition-)
      "int64[] count
int64 first
int64 end

")



(provide :agn_leg_detection/legmsg "575cf73be3bb238f762d331a4b3c6e57")


