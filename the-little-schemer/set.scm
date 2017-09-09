(load "member.scm")

(define set?
    (lambda (set) 
        (cond 
            ((null? set) #t)
            ((member (car set) (cdr set)) #f)
            (else (set? (cdr set))))))

; (display (set? '(apples peaches pears plums)))            ; #t
; (display (set? '(apple peaches apple plum)))              ; #f
; (display (set? '(apple 3 pear 4 9 apple 3 4)))            ; #f
