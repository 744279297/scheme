

(define equal?
	(lambda (s1 s2)
		(cond ((and (atom? s1) (atom? s2))
			   		(eqan? s1 s2))
			  ((or (atom? s1) (atom? s2)) #f)
		      (else (eqlist?withequal s1 s2)))))


(define eqlist?
	(lambda (l1 l2)
		(cond 
			((null? l1) (null? l2))
			((null? l2) #f)
			((atom? (car l1))
				(cond 
					((atom? (car l2))
					(cond 
						((eq? (car l1) (car l2)) 
						(eqlist? (cdr l1) (cdr l2)))
				    (else #f)))
			    (else #f)))
			((atom? (car l2)) #f)
	        (else 
	        	(and 
	        		(eqlist? (car l1) (car l2)) 
	        		(eqlist? (cdr l1) (cdr l2)))))))



(define eqlist?2
	(lambda (l1 l2)
		(cond 
			((null? l1) (null? l2))
			((null? l2) #f)
			((and (atom? (car l1)) (atom? (car l2)))
				(and (eq? (car l1) (car l2)) 
					 (eqlist? (cdr l1) (cdr l2))))
			((or (atom? (car l1)) (atom? (car l2))) #f)
			(else 
	        	(and 
	        		(eqlist? (car l1) (car l2)) 
	        		(eqlist? (cdr l1) (cdr l2)))))))


(define eqlist?withequal
	(lambda (l1 l2)
		(cond 
			((null? l1) (null? l2))
			((null? l2) #f)
			(else 
	        	(and 
	        		(equal? (car l1) (car l2)) 
	        		(equal? (cdr l1) (cdr l2)))))))	        		


;(display (eqlist?
;  '(strawberry ice cream)
;  '(strawberry ice cream)))                 

;(display (eqlist?
;  '(strawberry ice cream)
;  '(strawberry cream ice)))                  

;(display (eqlist?
;  '(banan ((split)))
;  '((banana) split)))                        

;(display (eqlist?
;  '(beef ((sausage)) (and (soda)))
;  '(beef ((salami)) (and (soda)))))          

;(display (eqlist?
;  '(beef ((sausage)) (and (soda)))
;  '(beef ((sausage)) (and (soda)))))         





;(display (eqlist?2
;  '(strawberry ice cream)
;  '(strawberry ice cream)))                 

;(display (eqlist?2
;  '(strawberry ice cream)
;  '(strawberry cream ice)))                  

;(display (eqlist?2
;  '(banan ((split)))
;  '((banana) split)))                        

;(display (eqlist?2
;  '(beef ((sausage)) (and (soda)))
;  '(beef ((salami)) (and (soda)))))          

;(display (eqlist?2
;  '(beef ((sausage)) (and (soda)))
;  '(beef ((sausage)) (and (soda))))) 



(display (eqlist?withequal
  '(strawberry ice cream)
  '(strawberry ice cream)))                 

(display (eqlist?withequal
  '(strawberry ice cream)
  '(strawberry cream ice)))                  

(display (eqlist?withequal
  '(banan ((split)))
  '((banana) split)))                        

(display (eqlist?withequal
  '(beef ((sausage)) (and (soda)))
  '(beef ((salami)) (and (soda)))))          

(display (eqlist?withequal
  '(beef ((sausage)) (and (soda)))
  '(beef ((sausage)) (and (soda))))) 






