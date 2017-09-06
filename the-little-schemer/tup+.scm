(load "add.scm")

(define tup+ 
	(lambda (tup1 tup2)
		(cond ((and (null? tup1) (null? tup2)) '())
	      (else (cons 
	      			(add (car tup1) (car tup2)) 
	      			(tup+ (cdr tup1) (cdr tup2)))))))


;(display (tup+ '(1 2 3) '(2 3 4)))




(define tup+2
	(lambda (tup1 tup2)
		(cond ((and (null? tup1) (null? tup2)) '())
			  ((null? tup1) tup2)
			  ((null? tup2) tup1)
	          (else (cons (add (car tup1) (car tup2))
	          			  (tup+2 (cdr tup1) (cdr tup2)))))))
;(display (tup+2 '(1 2 3 3) '(2 3 4)))


(define tup+3
	(lambda (tup1 tup2)
		(cond ((null? tup1) tup2)
			  ((null? tup2) tup1)
	          (else (cons (add (car tup1) (car tup2))
	          			  (tup+3 (cdr tup1) (cdr tup2)))))))

;(display (tup+3 '(1 2 3 3) '(2 3 4)))