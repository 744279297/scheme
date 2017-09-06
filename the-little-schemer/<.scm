(load "base.scm")

(define <
	(lambda (a b)
		(cond ((zero? b) #f)
			  ((zero? a) #t)
	          (else (< (sub1 a) (sub1 b))))))

;(display (< 2 2))

