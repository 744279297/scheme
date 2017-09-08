(load "add.scm")


(define X 
	(lambda (a b)
		(cond ((zero? b) 0)
	      (else (add a (X a (sub1 b)))))))

;(display (X 3 5))

