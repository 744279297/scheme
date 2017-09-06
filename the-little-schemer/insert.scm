(define insertR 
	(lambda (new old lat)
		(cond ((null? lat) '())
		      ((eq? old (car lat)) (cons old (cons new (cdr lat))))
		  	  (else (cons (car lat) (insertR new old (cdr lat)))))))

;(display (insertR 'm 'a '(a m)))

(define insertL 
	(lambda (new old lat)
		(cond ((null? lat) '())
		      ((eq? old (car lat)) (cons new lat))
		  	  (else (cons (car lat) (insertL new old (cdr lat)))))))

;(display (insertL 'm 'a '(a m)))

(define multiinsertR
	(lambda (new old lat)
		(cond ((null? lat) '())
	      ((eq? old (car lat)) (cons old (cons new (multiinsertR new old (cdr lat)))))
	      (else (cons (car lat) (multiinsertR new old (cdr lat)))))))

;(display (multiinsertR 'm 'a '(a a b)))


(define multiinsertL 
	(lambda (new old lat)
		(cond ((null? lat) '())
		      ((eq? old (car lat)) (cons new (cons old (multiinsertL new old (cdr lat)))))
		      (else (cons (car lat) (multiinsertL new old (cdr lat)))))))

;(display (multiinsertL 'm 'a '(a a b)))