(define eternity
  (lambda (x)
    (eternity x)))
(lambda (l) 
    (cond ((null? l) 0)
        (else (add1 (eternity (cdr l))))))

(display (((lambda (length) 
    (lambda (l) 
        (cond 
            ((null? l) 0)
            (else (add1 (length (cdr l)))))))
eternity) '()))

((lambda (f) 
    (lambda (l) 
        (cond 
            ((null? l) 0)
            (else (add1 (f (cdr l)))))))
    ((lambda (g) 
        (lambda (l) 
            (cond 
                ((null? l) 0)
                (else (add1 (g (cdr l)))))))
                eternity))

(display (((lambda (mk-length) 
    (mk-length mk-length))
    (lambda (mk-length) 
        (lambda (l) 
            (cond 
                ((null? l) 0)
                (else (add1 
                    ((mk-length eternity) (cdr l)))))))) 
'(1 2 3 4 5)))
 (((lambda (mk-length)
   (mk-length mk-length))
 (lambda (mk-length)
   (lambda (l)
     (cond
       ((null? l) 0)
       (else
         (add1
           ((mk-length mk-length) (cdr l))))))))
 '(1 2 3 4 5))