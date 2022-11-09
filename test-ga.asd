(asdf:defsystem "test-ga"
  :depends-on ("sketch")
  :components ((:file "app"))

  :defsystem-depends-on (:deploy)
  :build-operation "program-op"
  :build-pathname "app"
  :entry-point "app:start")
