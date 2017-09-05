(load "base.scm")

(define first 
	(lambda (lat) 
		(cond ((null? lat) '())
	      (else (cons (car (car lat)) (first (cdr lat)))))))

(define first-deep 
	(lambda (lat) 
		(cond ((null? lat) '())
	      ((atom? (car lat)) (car lat))
	  	  (else (cons (first-deep (car lat)) (first-deep (cdr lat)))))))


(display (first-deep '(((m n) (e v)) (c d) (e f))))