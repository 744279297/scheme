(load "base.scm")

(define >
	(lambda (a b)
	(cond ((zero? a) #f)
	      ((zero? b) #t)
	      (else (> (sub1 a) (sub1 b))))))

;(display (> 2 2))

