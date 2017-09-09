(load "lat?.scm")
(load "equal?.scm")

(define rember
  (lambda (a lat)
  	(cond 
  		((null? lat) '())
        (else (cond ((eq? a (car lat)) (cdr lat))
              (else (rember a (cdr lat))))))))

;(display (rember 'a '(b a c)))

(define rember-cons 
	(lambda (a lat)
		(cond ((null? lat) '())
	      (else (cond ((eq? a (car lat)) (cdr lat))
	            (else (cons (car lat) (rember-cons a (cdr lat)))))))))


;(display (rember-cons 'a '(b d a c)))


(define rember-easy
	(lambda (a lat)
		(cond ((null? lat) '())
	      ((eq? (car lat) a) (cdr lat))
	      (else (cons (car lat) (rember-easy a (cdr lat)))))))


;(display (rember-easy 'a '(b d a c)))

(define multirember
	(lambda (a lat)
		(cond ((null? lat) '())
	      ((eq? a (car lat)) (multirember a (cdr lat)))
	      (else (cons (car lat) (multirember a (cdr lat)))))))

;(display (multirember 'a '(a b a c)))

;rember*withlat?错误，对lat理解错误，lat不可嵌套

;(define rember*withlat?
;	(lambda (a lat)
;		(cond ((null? lat) '())
;			  ((lat? (car lat)) (cons (rember*withlat? a (car lat)) (rember*withlat? a (cdr lat))))
;			  ((eq? a (car lat)) (rember*withlat? a (cdr lat)))
;		      (else (cons (car lat) (rember*withlat? a (cdr lat)))))))

;(display (rember*withlat? 'a '(a (a b) a (b c a))))

(define rember* 
	(lambda (a lat)
		(cond ((null? lat) '())
			((atom? (car lat)) 
				(cond ((eq? a (car lat)) (rember* a (cdr lat)))
				      (else (cons (car lat) (rember* a (cdr lat))))))
	    (else (cons (rember* a (car lat)) (rember* a (cdr lat)))))))

;(display (rember* 'a '(a (a b) a (b c a))))




(define remberwithequal
	(lambda (a lat)
		(cond ((null? lat) '())
		      ((equal? a (car lat)) (cdr lat))
		  	  (else (cons (car lat) (remberwithequal a (cdr lat)))))))




; (display (remberwithequal
;   '(foo (bar (baz)))
;   '(apples (foo (bar (baz))) oranges)))







