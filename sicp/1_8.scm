(define (cube-root x)
	(define (cube-root-self quess)
  		(let ((new-quess (improve quess)))
  			(if (enough-good? new-quess quess)
  	    		new-quess
  	    		(cube-root-self new-quess))))

	(define (improve quess)
  		(/ (+ (/ x (* quess quess)) (* 2 quess)) 3))

	(define (enough-good? new-quess old-quess)
  		(< (/ (abs (- old-quess new-quess)) old-quess) 0.001))
  	(cube-root-self 1.0))
