(load "base.scm")
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


(define insertL-f
	(lambda (test?) 
		(lambda (new old lat) 
			(cond ((null? lat) '())
				((test? old (car lat)) (cons new lat))
				(else (cons (car lat) ((insertL-f test?) new old lat)))))))

;(display ((insertL-f eq?) 'm 'a '(a m)))


(define insert-g 
	(lambda (seq) 
		(lambda (new old l) 
			(cond ((null? l) '())
				((eq? old (car l)) (seq new old (cdr l)))
				(else (cons (car lat) ((insert-g seq) new old (cdr lat))))))))

(define insert-g-L
	(insert-g (lambda (new old l) (cons new (cons old l)))))

;(display (insert-g-L 'm 'a '(a m)))

(define multiinsertLR 
	(lambda (new oldL oldR lat) 
		(cond ((null? lat) '())
			((eq? oldL (car lat)) (cons new (cons oldL (multiinsertrLR new oldL oldR (cdr lat)))))
			((eq? oldR (car lat)) (cons oldR (cons new (multiinsertrLR new oldL oldR (cdr lat)))))
			(else (cons (car lat) (multiinsertrLR (cdr lat)))))))

(define multiinsertLR&co
	(lambda (new oldL oldR lat col) 
		(cond 
			((null? lat) (col '() 0 0))
			((eq? oldL (car lat)) 
				(multiinsertLR&co new oldL oldR (cdr lat) 
					(lambda (newl L R) 
						(col (cons new (cons oldL newl))
							(add1 L) R))))
			((eq? oldR (car lat))
				(multiinsertLR&co new oldL oldR (cdr lat)
					(lambda (newl L R) 
						(col (cons oldR (cons new newl)) 
							L (add1 R)))))
			(else (multiinsertLR&co new oldL oldR (cdr lat)
					(lambda (newl L R) 
						(col (cons (car lat) newl) L R)))))))

; (define col1
;   (lambda (lat L R)
;     lat))
; (define col2
;   (lambda (lat L R)
;     L))
; (define col3
;   (lambda (lat L R)
;     R))

; (display (multiinsertLR&co
;   'salty
;   'fish
;   'chips
;   '(chips and fish or fish and chips)
;   col1))
; (display (multiinsertLR&co
;   'salty
;   'fish
;   'chips
;   '(chips and fish or fish and chips)
;   col2))
;   (display (multiinsertLR&co
;   'salty
;   'fish
;   'chips
;   '(chips and fish or fish and chips)
;   col3))