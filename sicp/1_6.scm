(load "newtun.scm")
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (sqrt-with-new-if quess x)
  (new-if (good-enough? quess x)
  		  quess
  		  (sqrt-with-new-if (improve quess x) x)))
