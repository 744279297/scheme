
(define member* 
	(lambda (a lat)
		(cond 
			((null? lat) #f)
			((atom? (car lat)) 
				(or (eq? a (car lat))
				    (member* a (cdr lat))))
	        (else 
	            (or (member* a (car lat)) 
	                (member* a (cdr lat)))))))



;(display (member* 'b '(b (c a) (d a))))

