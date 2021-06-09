
(cl:in-package :asdf)

(defsystem "my_first_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addTwoInts" :depends-on ("_package_addTwoInts"))
    (:file "_package_addTwoInts" :depends-on ("_package"))
  ))