(load "<.scm")
(load "base.scm")
(load "sub.scm")
(define divide
	(lambda (a b)
		(cond ((< a b) 0)
	      (else (add1 (divide (sub a b) b))))))

(display (divide 4 2))
