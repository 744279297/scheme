(define (sum-sqrt a b c)
  (if (> a b)
      (if (> b c)
          (+ a b)
          (+ a c))
      (if (> a c)
          (+ b a)
          (+ b c))))

