(load "base.scm")

(define add 
	(lambda (n m)
	 	(cond 
			((zero? m) n)
	      	(else (add1 (add n (sub1 m)))))))

;(display (add+ 32 45))
		