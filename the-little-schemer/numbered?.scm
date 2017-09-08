(load "base.scm")

(define numbered? 
  (lambda (aexp) 
    (cond 
      ((atom? (car aexp)) (number? (car aexp))
      ((eq? (car (cdr aexp)) 'add) (numbered? (car (cdr (cdr aexp)))))
      ((eq? (car (cdr aexp)) 'sub) (numbered? (car (cdr (cdr aexp)))))
      ((eq? (car (cdr aexp)) 'divide) (numbered? (car (cdr (cdr aexp)))))
      ((eq? (car (cdr aexp)) 'X) (numbered? (car (cdr (cdr aexp)))))
    

(define numbered?2
  (lambda (aexp) 
    (cond 
      ((atom? (car aexp)) (number? (car aexp)))
      (else 
        (and (numbered?2 (car aexp))
             (numbered?2 (car (cdr (cdr aexp)))))))))
