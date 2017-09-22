(load "base.scm")
(load "shift.scm")

(define a-pair?
    (lambda (x) 
        (cond 
            ((atom? x) #f)
            ((null? x) #f)
            ((null? (cdr x)) #f)
            ((null? (cdr (cdr x))) #t)
            (else #f))))



(define align
    (lambda (pora) 
        (cond 
            ((atom? pora) pora)
            ((a-pair? (first pora))
                (align (shift pora)))
            (else (build (first pora)
                    (align (second pora)))))))


(display (align '((a b)(c d))))

