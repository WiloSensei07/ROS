; Auto-generated. Do not edit!


(cl:in-package odom_client_server-srv)


;//! \htmlinclude diffodom-request.msg.html

(cl:defclass <diffodom-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (phi1
    :reader phi1
    :initarg :phi1
    :type cl:float
    :initform 0.0)
   (phi2
    :reader phi2
    :initarg :phi2
    :type cl:float
    :initform 0.0)
   (l
    :reader l
    :initarg :l
    :type cl:float
    :initform 0.0))
)

(cl:defclass diffodom-request (<diffodom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <diffodom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'diffodom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odom_client_server-srv:<diffodom-request> is deprecated: use odom_client_server-srv:diffodom-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <diffodom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odom_client_server-srv:r-val is deprecated.  Use odom_client_server-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'phi1-val :lambda-list '(m))
(cl:defmethod phi1-val ((m <diffodom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odom_client_server-srv:phi1-val is deprecated.  Use odom_client_server-srv:phi1 instead.")
  (phi1 m))

(cl:ensure-generic-function 'phi2-val :lambda-list '(m))
(cl:defmethod phi2-val ((m <diffodom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odom_client_server-srv:phi2-val is deprecated.  Use odom_client_server-srv:phi2 instead.")
  (phi2 m))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <diffodom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odom_client_server-srv:l-val is deprecated.  Use odom_client_server-srv:l instead.")
  (l m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <diffodom-request>) ostream)
  "Serializes a message object of type '<diffodom-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'phi1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'phi2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <diffodom-request>) istream)
  "Deserializes a message object of type '<diffodom-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<diffodom-request>)))
  "Returns string type for a service object of type '<diffodom-request>"
  "odom_client_server/diffodomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'diffodom-request)))
  "Returns string type for a service object of type 'diffodom-request"
  "odom_client_server/diffodomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<diffodom-request>)))
  "Returns md5sum for a message object of type '<diffodom-request>"
  "8c976f4f21b249dc4f54cfe66d6d9e4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'diffodom-request)))
  "Returns md5sum for a message object of type 'diffodom-request"
  "8c976f4f21b249dc4f54cfe66d6d9e4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<diffodom-request>)))
  "Returns full string definition for message of type '<diffodom-request>"
  (cl:format cl:nil "float64 r~%float64 phi1~%float64 phi2~%float64 l~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'diffodom-request)))
  "Returns full string definition for message of type 'diffodom-request"
  (cl:format cl:nil "float64 r~%float64 phi1~%float64 phi2~%float64 l~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <diffodom-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <diffodom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'diffodom-request
    (cl:cons ':r (r msg))
    (cl:cons ':phi1 (phi1 msg))
    (cl:cons ':phi2 (phi2 msg))
    (cl:cons ':l (l msg))
))
;//! \htmlinclude diffodom-response.msg.html

(cl:defclass <diffodom-response> (roslisp-msg-protocol:ros-message)
  ((Vx
    :reader Vx
    :initarg :Vx
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass diffodom-response (<diffodom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <diffodom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'diffodom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odom_client_server-srv:<diffodom-response> is deprecated: use odom_client_server-srv:diffodom-response instead.")))

(cl:ensure-generic-function 'Vx-val :lambda-list '(m))
(cl:defmethod Vx-val ((m <diffodom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odom_client_server-srv:Vx-val is deprecated.  Use odom_client_server-srv:Vx instead.")
  (Vx m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <diffodom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odom_client_server-srv:theta-val is deprecated.  Use odom_client_server-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <diffodom-response>) ostream)
  "Serializes a message object of type '<diffodom-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <diffodom-response>) istream)
  "Deserializes a message object of type '<diffodom-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<diffodom-response>)))
  "Returns string type for a service object of type '<diffodom-response>"
  "odom_client_server/diffodomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'diffodom-response)))
  "Returns string type for a service object of type 'diffodom-response"
  "odom_client_server/diffodomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<diffodom-response>)))
  "Returns md5sum for a message object of type '<diffodom-response>"
  "8c976f4f21b249dc4f54cfe66d6d9e4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'diffodom-response)))
  "Returns md5sum for a message object of type 'diffodom-response"
  "8c976f4f21b249dc4f54cfe66d6d9e4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<diffodom-response>)))
  "Returns full string definition for message of type '<diffodom-response>"
  (cl:format cl:nil "float64 Vx~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'diffodom-response)))
  "Returns full string definition for message of type 'diffodom-response"
  (cl:format cl:nil "float64 Vx~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <diffodom-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <diffodom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'diffodom-response
    (cl:cons ':Vx (Vx msg))
    (cl:cons ':theta (theta msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'diffodom)))
  'diffodom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'diffodom)))
  'diffodom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'diffodom)))
  "Returns string type for a service object of type '<diffodom>"
  "odom_client_server/diffodom")