(load "add.scm")

(define addtup
	(lambda (tup)
		(cond ((null? tup) 0)
	      (else (add (car tup) (addtup (cdr tup)))))))

;(display (addtup '(5 3)))