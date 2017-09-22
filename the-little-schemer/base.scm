(define atom? 
	(lambda (x)
	(and (not (pair? x)) (not (null? x)))))

(define add1 
	(lambda (x)
	(+ 1 x)))


(define sub1
	(lambda (x)
	(- x 1)))


(define pick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (car lat))
      (else
        (pick (sub1 n) (cdr lat))))))