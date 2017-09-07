(load "eqan?.scm")
(load "base.scm")

(define occur
	(lambda (a lat)
		(cond ((null? lat) 0)
	      ((eqan? a (car lat)) (add1 (occur a (cdr lat))))
	      (else (occur a (cdr lat))))))

(display (occur 'a '(a v a b a d)))