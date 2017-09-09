(load "member.scm")
(load "rember.scm")
(define makeset
    (lambda (lat) 
        (cond 
            ((null? lat) '())
            ((member (car lat) (cdr lat)) (makeset (cdr lat)))
            (else (cons (car lat) (makeset (cdr lat)))))))

;(display (makeset '(apple peach pear peach plum apple lemon peach)))    


(define makeset2 
    (lambda (lat) 
        (cond 
            ((null? lat) '())
            (else (cons 
                    (car lat) 
                    (makeset2 
                        (multirember (car lat) (cdr lat))))))))

;(display (makeset2 '(apple peach pear peach plum apple lemon peach)))