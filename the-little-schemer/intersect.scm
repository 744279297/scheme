(define intersect? 
    (lambda (set1 set2) 
        (cond 
            ((null? set1) #f)
            ((member (car set1) set2) #t)
            (else (intersect? (cdr set1) set2)))))


; (display (intersect?
;   '(stewed tomatoes and macaroni)
;   '(macaroni and cheese)))

(define intersect
    (lambda (set1 set2) 
        (cond
            ((null? set1) '())
            ((member (car set1) set2) (cons (car set1) (intersect (cdr set1) set2)))
            (else (intersect (cdr set1) set2)))))

; (display (intersect
;   '(stewed tomatoes and macaroni)
;   '(macaroni and cheese)))