(define rember
  (lambda (a lat)
  	(cond 
  		((null? lat) '())
        (else (cond ((eq? a (car lat)) (cdr lat))
              (else (rember a (cdr lat))))))))

(display (rember 'a '(b a c)))

(define rember-cons 
	(lambda (a lat)
		(cond ((null? lat) '())
	      (else (cond ((eq? a (car lat)) (cdr lat))
	            (else (cons (car lat) (rember-cons a (cdr lat)))))))))


(display (rember-cons 'a '(b d a c)))


(define rember-easy
	(lambda (a lat)
		(cond ((null? lat) '())
	      ((eq? (car lat) a) (cdr lat))
	      (else (cons (car lat) (rember-easy a (cdr lat)))))))


(display (rember-easy 'a '(b d a c)))

(define multirember
	(lambda (a lat)
		(cond ((null? lat) '())
	      ((eq? a (car lat)) (multirember a (cdr lat)))
	      (else (cons (car lat) (multirember a (cdr lat)))))))

(display (multirember 'a '(a b a c)))