(define first
  (lambda (p)
    (car p)))

(define second
  (lambda (p)
    (car (cdr p))))

(define build
  (lambda (s1 s2)
    (cons s1 (cons s2 '()))))

(define shift
    (lambda (pair) 
        (build (first (first pair))
            (build (sceond (first pair))
                (sceond pair)))))