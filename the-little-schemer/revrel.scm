(load "pair.scm")

(define revrel
    (lambda (rel) 
        (cond 
            ((null? rel) '())
            (else (cons (build (second (car rel)) (first (car rel))) (revrel (cdr rel)))))))