
;(define (repeat f n)
  ;(if (< n 1)
      ;(lambda (x) x)
      ;(lambda (x)
        ;(f ( (repeat f (- n 1)) x)))))




;iterative procedure

(define (square x) (* x x))

; return procedure
(define (composite f g)
  (lambda (x) (f (g x))))


; result is a procedure
(define (repeat f n)
  (define (iter n result) 
    (if (< n 1)
        result
        (iter (- n 1) (composite f result))))
  (iter n (lambda (x) x)))



