(define (cif a b)
  (define (cif-iter total b)
    (if (= b 0)
        total
        (cif-iter (* total a) (- b 1))))
  (cif-iter 1 b)
)
(load "prime.scm")
(define (get n)
  (if (fast-prime? n 3)
      (if (predicate)
          consequent
          alternative)
      (get (+ n 1))))

