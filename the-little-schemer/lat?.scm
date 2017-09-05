(load "base.scm")

(define lat?
	(lambda(l)
	(cond
	((null? l)#t)
	((atom? (car l)) (lat? (cdr l)))
	(else #f))))
(display (lat? '(a b c)))