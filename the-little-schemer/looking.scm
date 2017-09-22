(load "base.scm")


(define keep-looking 
    (lambda (a sorn lat) 
        (cond 
            ((number? sorn) 
                (keep-looking a (pick sorn lat) lat))
            (else (eq? sorn a)))))
(define looking
    (lambda (a lat) 
        (keep-looking a (pick 1 lat) lat)))

(display (looking 'caviar '(6 2 4 caviar 5 7 3)))