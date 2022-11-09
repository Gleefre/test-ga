LISP ?= sbcl

build:
	$(LISP) --eval "(ql:quickload :deploy)" \
		--eval "(ql:quickload :sketch)" \
		--eval "(push :deploy *features*)" \
		--load test-ga.asd \
		--eval "(asdf:load-system :test-ga :force t)" \
		--eval "(asdf:make :test-ga)" \
		--eval "(quit)"

clean:
	rm -rf bin/
