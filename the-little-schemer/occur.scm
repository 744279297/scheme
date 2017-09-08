(load "eqan?.scm")
(load "base.scm")
(load "add.scm")

(define occur
	(lambda (a lat)
		(cond ((null? lat) 0)
	      ((eqan? a (car lat)) (add1 (occur a (cdr lat))))
	      (else (occur a (cdr lat))))))

;(display (occur 'a '(a v a b a d)))


(define occur*
	(lambda (a lat)
		(cond ((null? lat) 0)
			((atom? (car lat))
				(cond ((eqan? a (car lat)) (add1 (occur* a (cdr lat))))
			      (else (occur* a (cdr lat)))))
	      (else (add (occur* a (car lat)) (occur* a (cdr lat)))))))

;(display (occur* 'a '((a b) (v d a) a (b (b a) a) a d)))