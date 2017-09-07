(load "=.scm")


(define eqan?
	(lambda (a1 a2)
		(cond ((and (number? a1) (number? a2)) (= a1 a2))
			  ((or (number? a1) (number? a2)) #f)
	          (else (eq? a1 a2)))))



;(display (eqan? 1 1))
;(display (eqan? 'a 'a))
;(display (eqan? 1 'a))