(load "add.scm")
(load "sub.scm")
(load "divide.scm")
(load "X.scm")
(load "square.scm")

(define value
    (lambda (nexp) 
        (cond 
            ((atom? nexp) nexp)
            ((eq? (car (cdr nexp)) '+) 
                (add (value (car nexp)) (value (car (cdr (cdr nexp))))))
            ((eq? (car (cdr nexp)) '-) 
                (sub (value (car nexp)) (value (car (cdr (cdr nexp))))))
            ((eq? (car (cdr nexp)) '*) 
                (X (value (car nexp))  (value (car (cdr (cdr nexp))))))
            ((eq? (car (cdr nexp)) '/) 
                (divide (value (car nexp))  (value (car (cdr (cdr nexp))))))
            ((eq? (car (cdr nexp)) '^) 
                (square (value (car nexp))  (value (car (cdr (cdr nexp)))))))))


(display (value 13))                                   ; 13
(display (value '(1 + 3)))                            ; 4
(display (value '(1 + (3 ^ 4))))                     ; 82
           

(define 1st-sub-exp
    (lambda (aexp) 
        (car (cdr aexp))))

(define 2nd-sub-exp
    (lambda (aexp) 
        (car (cdr (cdr aexp)))))
(define operator
    (lambda (aexp) 
        (car aexp)))

(define value2
    (lambda (aexp) 
        (cond 
            ((atom? aexp) aexp)
            ((eq? (operator aexp) '+) 
                (add (value2 (1st-sub-exp aexp)) (value2 (2nd-sub-exp aexp))))
            ((eq? (operator aexp) '-) 
                (sub (value2 (1st-sub-exp aexp)) (value2 (2nd-sub-exp aexp))))
            ((eq? (operator aexp) '*) 
                (X (value2 (1st-sub-exp aexp)) (value2 (2nd-sub-exp aexp))))
            ((eq? (operator aexp) '/) 
                (divide (value2 (1st-sub-exp aexp)) (value2 (2nd-sub-exp aexp))))
            ((eq? (operator aexp) '^) 
                (square (value2 (1st-sub-exp aexp)) (value2 (2nd-sub-exp aexp)))))))


(display (value2 13))                                   ; 13
(display (value2 '(+ 1 3)))                            ; 4
(display (value2 '(+ 1 (^ 3 4)))) 