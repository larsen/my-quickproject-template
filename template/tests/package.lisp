(defpackage #:(#| TMPL_VAR name |#)/test
  (:use #:cl
        #:(#| TMPL_VAR name |#)
        #:parachute))
