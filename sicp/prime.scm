(define (even? n)
  	  (= (remainder n 2) 0))
(define (square x)
  (* x x))
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next-n test-divisor)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))
(define (fermat-test n)
  (define (tryit a)
    (= (expmod a n n) a))
(tryit (+ 1 (random (- n 1))))
)
(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else #f)))
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display "elapsed-time"))
(define (next-odd n)
  (if (odd? n)
      (+ n 2)
      (+ n 1)))
(define (continue-prime n counter)
  (cond ((= counter 0) (display " are primes"))
        ((prime? n) (display n) (newline) (continue-prime (next-odd n) (- counter 1)))
        (else (continue-prime (next-odd n) counter))))
(define (use-time n counter)
  (let ((start-time (runtime)))
  	(continue-prime n counter)
    (display (- start-time (runtime)))))
(define (next-n n)
  (if (= n 2)
      (+ n 1)
      (+ n 2)))