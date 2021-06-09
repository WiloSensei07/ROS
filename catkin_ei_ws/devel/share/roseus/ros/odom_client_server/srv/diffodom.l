;; Auto-generated. Do not edit!


(when (boundp 'odom_client_server::diffodom)
  (if (not (find-package "ODOM_CLIENT_SERVER"))
    (make-package "ODOM_CLIENT_SERVER"))
  (shadow 'diffodom (find-package "ODOM_CLIENT_SERVER")))
(unless (find-package "ODOM_CLIENT_SERVER::DIFFODOM")
  (make-package "ODOM_CLIENT_SERVER::DIFFODOM"))
(unless (find-package "ODOM_CLIENT_SERVER::DIFFODOMREQUEST")
  (make-package "ODOM_CLIENT_SERVER::DIFFODOMREQUEST"))
(unless (find-package "ODOM_CLIENT_SERVER::DIFFODOMRESPONSE")
  (make-package "ODOM_CLIENT_SERVER::DIFFODOMRESPONSE"))

(in-package "ROS")





(defclass odom_client_server::diffodomRequest
  :super ros::object
  :slots (_r _phi1 _phi2 _l ))

(defmethod odom_client_server::diffodomRequest
  (:init
   (&key
    ((:r __r) 0.0)
    ((:phi1 __phi1) 0.0)
    ((:phi2 __phi2) 0.0)
    ((:l __l) 0.0)
    )
   (send-super :init)
   (setq _r (float __r))
   (setq _phi1 (float __phi1))
   (setq _phi2 (float __phi2))
   (setq _l (float __l))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:phi1
   (&optional __phi1)
   (if __phi1 (setq _phi1 __phi1)) _phi1)
  (:phi2
   (&optional __phi2)
   (if __phi2 (setq _phi2 __phi2)) _phi2)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:serialization-length
   ()
   (+
    ;; float64 _r
    8
    ;; float64 _phi1
    8
    ;; float64 _phi2
    8
    ;; float64 _l
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi1
       (sys::poke _phi1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi2
       (sys::poke _phi2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _l
       (sys::poke _l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi1
     (setq _phi1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi2
     (setq _phi2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l
     (setq _l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass odom_client_server::diffodomResponse
  :super ros::object
  :slots (_Vx _theta ))

(defmethod odom_client_server::diffodomResponse
  (:init
   (&key
    ((:Vx __Vx) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _Vx (float __Vx))
   (setq _theta (float __theta))
   self)
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _Vx
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Vx
       (sys::poke _Vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Vx
     (setq _Vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass odom_client_server::diffodom
  :super ros::object
  :slots ())

(setf (get odom_client_server::diffodom :md5sum-) "8c976f4f21b249dc4f54cfe66d6d9e4f")
(setf (get odom_client_server::diffodom :datatype-) "odom_client_server/diffodom")
(setf (get odom_client_server::diffodom :request) odom_client_server::diffodomRequest)
(setf (get odom_client_server::diffodom :response) odom_client_server::diffodomResponse)

(defmethod odom_client_server::diffodomRequest
  (:response () (instance odom_client_server::diffodomResponse :init)))

(setf (get odom_client_server::diffodomRequest :md5sum-) "8c976f4f21b249dc4f54cfe66d6d9e4f")
(setf (get odom_client_server::diffodomRequest :datatype-) "odom_client_server/diffodomRequest")
(setf (get odom_client_server::diffodomRequest :definition-)
      "float64 r
float64 phi1
float64 phi2
float64 l
---
float64 Vx
float64 theta

")

(setf (get odom_client_server::diffodomResponse :md5sum-) "8c976f4f21b249dc4f54cfe66d6d9e4f")
(setf (get odom_client_server::diffodomResponse :datatype-) "odom_client_server/diffodomResponse")
(setf (get odom_client_server::diffodomResponse :definition-)
      "float64 r
float64 phi1
float64 phi2
float64 l
---
float64 Vx
float64 theta

")



(provide :odom_client_server/diffodom "8c976f4f21b249dc4f54cfe66d6d9e4f")


