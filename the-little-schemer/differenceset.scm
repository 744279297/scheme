(load "rember.scm")
(load "member.scm")
(define differenceset2
    (lambda (set1 set2) 
        (cond 
            ((null? set1) set2)
            ((member (car set1) set2) (differenceset2 (cdr set1) (rember  (car set1) set2)))
            (else (cons (car set1) (differenceset2 (cdr set1) set2))))))

;(display (differenceset2 '(a b c) '(a b d e f)))


(define differenceset
    (lambda (set1 set2)
        (cond 
            ((null? set1) '())
            ((member (car set1) set2) (differenceset (cdr set1) set2))
            (else (cons (car set1) (differenceset (cdr set1) set2))))))

;(display (differenceset '(a b c) '(a b d e f)))


(define differenceset3
    (lambda (set1 set2) 
        (cons (differenceset set1 set2) (differenceset set2 set1))))


;(display (differenceset3 '(a b c) '(a b d e f)))