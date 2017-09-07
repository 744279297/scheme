
(define all-nums
 	(lambda (lat)
 		(cond ((null? lat) '())
 			((number? (car lat)) (cons (car lat) (all-nums (cdr lat))))
 	      	(else (all-nums (cdr lat))))))

;(display (all-nums '(1 a 3 g 5)))