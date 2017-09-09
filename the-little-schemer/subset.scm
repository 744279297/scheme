(load "rember.scm")
(load "member.scm")

(define subset?
    (lambda (set1 set2) 
        (cond
            ((null? set1) #t) 
            ((member (car set1) set2) 
                (subset? (cdr set1) set2))
            (else #f))))

; (display (subset? '(5 chicken wings)
;          '(5 hamburgers 2 pieces fried chicken and light duckling wings)))