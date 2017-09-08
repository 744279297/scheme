(define leftmost
	(lambda (lat)
		(cond 
			((null? lat) '())
			((atom? (car lat)) (car lat))
	      (else 
	      	(leftmost (car lat))))))

;(display (leftmost '((potato) (chips ((with) fish) (chips)))))