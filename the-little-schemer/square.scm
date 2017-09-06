(load "base.scm")
(load "add.scm")
(load "X.scm")

(define square
	(lambda (a b)
		(cond ((zero? b) 1)
	      (else (X a (square a (sub1 b)))))))

;(display (square 2 3))