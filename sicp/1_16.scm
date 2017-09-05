  (define (even? n)
  	  (= (remainder n 2) 0))
  (define (square x)
    (* x x))
  (define (fast-expt b n)	
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
      	  (else (* b (fast-expt b (- n 1))))))

  (define (fast-expt-new n b)
  	(define (fast-expt-new-iter a b n)
  	  (if (= 0 n)
          a
          (if (even? n)
              (and (display "even \n" ) (fast-expt-new-iter a (* b b) (/ n 2)))
              (and (display "odd \n" ) (fast-expt-new-iter (* a b)  b (- n 1)))
    )))
  	(fast-expt-new-iter 1 b n)

  )
(define (fast-expt-n b n)
    (expt-iter b n 1))

(define (expt-iter b n a)
    (cond ((= n 0)
            a)
          ((even? n)
            (and (display "even \n") (expt-iter (square b)
                       (/ n 2)
                       a)))
          (else
            (and (display "odd \n") (expt-iter b
                       (- n 1)
                       (* b a))))))