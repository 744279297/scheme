(load "base.scm")

(define one?
 	(lambda (a)
 		(cond ((zero? a) #f)
 	     (else (zero? (sub1 a))))))

(define one?2
  	(lambda (a)
  	 	(= a 1)))