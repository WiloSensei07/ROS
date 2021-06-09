
(cl:in-package :asdf)

(defsystem "odom_client_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "diffodom" :depends-on ("_package_diffodom"))
    (:file "_package_diffodom" :depends-on ("_package"))
  ))