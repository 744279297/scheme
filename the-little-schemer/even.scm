(load "divide.scm")
(load "X.scm")
(define even? 
    (lambda (n) 
        (= (X (divide n 2) 2) n)))

(define evens-only*&co
    (lambda (l col) 
        (cond  
            ((null? l) (col '() 1 0))
            ((atom? (car l))
                (cond 
                    ((even? (car l)) 
                        (evens-only*&co (cdr l) 
                            (lambda (newl P S) 
                                (col (cons (car l) newl) (X P (car l)) S))))
                    (else 
                        (evens-only*&co (cdr l) 
                            (lambda (newl P S) 
                                (col newl P (+ S (car l))))))))
            (else (evens-only*&co (car l) 
                    (lambda (al ap as) 
                        (evens-only*&co 
                            (cdr l)
                                (lambda (dl dp ds) 
                                    (col (cons al dl)
                                         (* ap dp)
                                         (+ as ds))))))))))


(define evens-friend
  (lambda (e p s)
    e))

(display (evens-only*&co 
  '((9 1 2 8) 3 10 ((9 9) 7 6) 2)
  evens-friend))