(define (ll y)
  ; log1 = 0, so we start from 0
  ;(fix-point (lambda (x) (/ (log y) (log x))) 10.0))
  (fix-point (lambda (x) (average x (/ (log y) (log x)))) 10.0))

(define (fix-point f first-guess)
  ;precision
  (define precision 0.00001)
  ; | guess - next | < precision
  (define (close-enough? old new)
    (< (abs (- old new)) 
       precision))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define  (average a b) 
  (/ (+ a b) 2))
