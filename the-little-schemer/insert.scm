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

(define insertR*
	(lambda (new old lat)
		(cond ((null? lat) '())
			  ((atom? (car lat))
			  	(cond ((eq? old (car lat)) (cons old (cons new (insertR* new old (cdr lat)))))
			        (else (cons (car lat) (insertR* new old (cdr lat))))))
		      (else (cons (insertR* new old (car lat)) (insertR* new old (cdr lat)))))))

;(display (insertR* 'a 'b '((b c) (b c) (c d b) (m b a))))

(define insertL*
	(lambda (new old lat)
		(cond ((null? lat) '())
			((atom? (car lat))
				(cond ((eq? old (car lat)) (cons new (cons old (insertL* new old (cdr lat)))))
			      (else (cons (car lat) (insertL* new old (cdr lat))))))
	      (else (cons (insertL* new old (car lat)) (insertL* new old (cdr lat)))))))

;(display (insertL* 'a 'b '((b c) (b c) (c d b) (m b a))))