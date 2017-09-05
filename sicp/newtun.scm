(define (average x y)
  (/ (+ x y) 2))

(define (improve quess x)
  (average quess (/ x quess)))

(define (good-enough? quess x)
  (< (abs (- (square quess) x)) 0.001))

(define (sqrt-iter quess x)
	(let ((new-quess (improve quess x))
		(if (good-enough-new? quess new-quess)
      	new-quess
      	(sqrt-iter new-quess x)))))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x))

(define (good-enough-new? old-quess new-quess)
  (< (/ (abs (- old-quess new-quess)) old-quess) 0.001))