


(define no-nums
	(lambda (lat)
		(cond ((null? lat) '())
			  ((number? (car lat)) (no-nums (cdr lat)))
	          (else (cons (car lat) (no-nums (cdr lat)))))))

(display (no-nums '(a 1 3 f 3 g)))