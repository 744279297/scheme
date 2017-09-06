(load "base.scm")

(define sub 
	(lambda (a b)
		(cond 
			((zero? b) a)
	        (else (sub1 (sub a (sub1 b)))))))

(display (sub 10 8))