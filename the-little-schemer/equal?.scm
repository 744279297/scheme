


(define equal?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
       (eq? s1 s2))
      ((or (atom? s1) (atom? s2)) #f)
      (else (eqlist? s1 s2)))))


(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1) (null? l2)) #t)
      ((or (null? l1) (null? l2)) #f)
      (else
        (and (equal? (car l1) (car l2))
             (equal? (cdr l1) (cdr l2)))))))


;(display (equal? 'a 'a))                              ; #t
;(display (equal? 'a 'b) )                             ; #f
;(display (equal? '(a) 'a))                           ; #f
;(display (equal? '(a) '(a)))                          ; #t
;(display (equal? '(a) '(b)))                          ; #f
;(display (equal? '(a) '()))                           ; #f
;(display (equal? '() '(a)))                           ; #f
;(display (equal? '(a b c) '(a b c)))                  ; #t
;(display (equal? '(a (b c)) '(a (b c))))              ; #t
;(display (equal? '(a ()) '(a ())))                    ; #t

;(a (b (d e)) (c (f g)))