(defpackage #:app
  (:use #:cl #:sketch)
  (:export #:start))

(in-package #:app)

(defsketch app ((i 0))
  (incf i)
  (background (hash-color (floor i 10))))

(defun start ()
  (make-instance 'app)
  (sleep 5))
