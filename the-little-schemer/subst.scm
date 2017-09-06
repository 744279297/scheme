(define subst 
	(lambda (new old lat)
		(cond ((null? lat) '())
	    	((eq? old (car lat)) (cons new (cdr lat)))
	    	(else (cons (car lat) (subst new old (cdr lat)))))))


;(display (subst 'a 'b '(a b)))


(define subst2 
	(lambda (new o1 o2 lat)
		(cond ((null? lat) '())
	      ((or (eq? o1 (car lat)) (eq? o2 (car lat))) (cons new (cdr lat)))
	  	  (else (cons (car lat) (subst2 new o1 o2 (cdr lat)))))))


;(display (subst2 'a 'b 'c '(a b b c)))


(define multisubst 
	(lambda (new old lat)
		(cond ((null? lat) '())
	    ((eq? old (car lat)) (cons new (multisubst new old (cdr lat))))
	    (else (cons (car lat) (multisubst new old (cdr lat)))))))



;(display (multisubst 'a 'b '(a b b c)))