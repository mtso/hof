(defun add (x)
  "Returns a closure."
  (lambda (y) (+ x y)))

(defun each (seq f)
  "Accepts a closure."
  (mapc f seq))

;; Usage
(funcall (add 1) 2)
(each '(1 2 3) #'print)
