(asdf:defsystem #:(#| TMPL_VAR name |#)
  :description "Describe (#| TMPL_VAR name |#) here"
  :author "(#| TMPL_VAR author |#)"
  :license  "(#| TMPL_VAR license |#)"
  :version "0.0.1"
  :serial t(#| TMPL_IF depends-on |#)
  :depends-on (#| TMPL_VAR dependencies-string |#)(#| /TMPL_IF |#)
  :components ((:file "package")
               (:file "(#| TMPL_VAR name |#)"))
  :in-order-to ((test-op (test-op #:(#| TMPL_VAR name |#)/test))))

(asdf:defsystem #:(#| TMPL_VAR name |#)/test
  :depends-on (#:parachute
               #:(#| TMPL_VAR name |#))
  :components ((:module "tests"
                :components ((:file "package")
                             (:file "main"))))
  :perform (test-op (op _) (symbol-call :parachute :test :(#|TMPL_VAR name |#)/test)))
