LISP ?= sbcl

build:
	$(LISP) --eval "(ql:quickload :deploy)" \
		--eval "(ql:quickload :sketch)" \
		--eval "(push :deploy *features*)" \
		--eval "(deploy:define-library cl-opengl-bindings::opengl :sources '(\"/Applications/Xcode_13.2.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/\"))" \
		--load test-ga.asd \
		--eval "(asdf:load-system :test-ga :force t)" \
		--eval "(asdf:make :test-ga)" \
		--eval "(quit)"
