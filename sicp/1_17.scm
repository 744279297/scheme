(define (* a b)
	(if (= b 0)
	    0
	    (+ a (* a (- b 1)))))
  
(define (*-new a b)
  (define (*-iter a b c)
    (if (= c 0)
        a
        (*-iter (+ a b) b (- c 1))))
(*-iter 0 a b))
