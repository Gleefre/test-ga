(asdf:defsystem "test-ga"
  :depends-on ("sketch")
  :components ((:file "app"))

  :defsystem-depends-on (:deploy)
  :build-operation #+darwin "osx-app-deploy-op" #-darwin "deploy-op"
  :build-pathname "app"
  :entry-point "app:start")
