(load "base.scm")
(load "one?.scm")

(define pick
 (lambda (n lat)
 	(cond ((zero? (sub1 n)) (car lat))
       (else (pick (sub1 n) (cdr lat))))))

;(display (pick 3 '(1 2 3)))

(define rempick
	(lambda (n lat)
		(cond ((zero? (sub1 n)) (cdr lat))
	      (else (cons (car lat) (rempick (sub1 n) (cdr lat)))))))

(display (rempick 2 '(1 2 3)))


(define rempicknew
 	(lambda (n lat)
 		(cond ((one? n) (cdr lat))
 	          (else (cons (car lat) (rempicknew (sub1 n) (cdr lat)))))))