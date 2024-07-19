(asdf:defsystem #:plunger
  :description "New CLOG System"
  :author "some@one.com"
  :license  "BSD"
  :version "0.0.0"
  :serial t
  :entry-point "plunger:start-app"  
  :depends-on (#:clog) ; add clog plugins here as #:plugin for run time
  :components ((:file "plunger")
               (:file "apanel")))

(asdf:defsystem #:plunger/tools
  :defsystem-depends-on (:clog)
  :depends-on (#:plunger #:clog/tools) ; add clog plugins here as #:plugin/tools for design time
  :components ((:clog-file "apanel")))
