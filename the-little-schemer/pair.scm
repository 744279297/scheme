
(define a-pair?
    (lambda (x) 
        (cond 
            ((null? x) #f)
            ((atom? x) #f)
            ((null? (cdr x)) #f)
            ((null? (cdr (cdr x))) #t)
            (else #f))))

(define first
    (lambda (x) 
        (car x)))

(define second
    (lambda (x) 
        (car (cdr x))))

(define build
    (lambda (s1 s2) 
        (cons s1 (cons s2 '()))))