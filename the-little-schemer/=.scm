(load "base.scm")
(load "<.scm")
(load ">.scm")

(define =
	(lambda (a b)
		(cond 
			((and (zero? a) (zero? b)) #t)
		    ((or (zero? a) (zero? b)) #f)
			(else (= (sub1 a) (sub1 b))))))

		

;(display (= 2 2))


(define =2
	(lambda (a b)
		(cond ((zero? a) (zero? b))
			  ((zero? b) #f)
	          (else (=2 (sub1 a) (sub1 b))))))

;(display (=2 2 2))


(define =3
	(lambda (a b)
		(cond ((> a b) #f)
			  ((< a b) #f)
	          (else #t))))


;(display (=3 2 2))

