(load "subset.scm")

(define eqset?
    (lambda (set1 set2) 
        (and (subset? set1 set2) (subset? set2 set1))))

; (display (eqset? '(a b c) '(c b a)))
