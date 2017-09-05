(define (f n)
  (define (f-iter)
    (cond ((< n 3) n)
          (else (+ (f (- n 1))
          		   (* 2 (f (- n 2)))
          		   (* 3 (f (- n 3)))))))
  (f-iter))
(define (f-new n)
  (define (f-iter a b c i)
    (if (= n i)
        c
        (f-iter (+ a (* 2 b) (* 3 c))
        		a
        	    b
        	    (+ i 1))))
   (f-iter 2 1 0 0))