(define insertR 
	(lambda (new old lat)
		(cond ((null? lat) '())
		      ((eq? old (car lat)) (cons old (cons new (cdr lat))))
		  	  (else (cons (car lat) (insertR new old (cdr lat)))))))

(display (insertR 'm 'a '(a m)))

(define insertL 
	(lambda (new old lat)
		(cond ((null? lat) '())
		      ((eq? old (car lat)) (cons new lat))
		  	  (else (cons (car lat) (insertL new old (cdr lat)))))))

(display (insertL 'm 'a '(a m)))