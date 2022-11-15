(defpackage #:app
  (:use #:cl #:sketch)
  (:export #:start))

(in-package #:app)

(defsketch app ((i 0))
  (incf i)
  (background (hash-color (floor i 10))))

(defparameter *font-name* "RobotoMono-Bold.ttf")

(defun sketch::make-default-font ())
(defun sketch::make-error-font ())

(defun start ()
  #+deploy
  (sdl2:make-this-thread-main
   (lambda ()
     (let ((sketch::*build* t))
       (make-instance 'app :resizable t))))
  #-deploy
  (make-instance 'app :resizable t))

(defun start ()
  (make-instance 'app)
  (sleep 5))
