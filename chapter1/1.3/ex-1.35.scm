(define (ratio x)
  (fix-point (lambda (x) (+ 1 (/ 1 x))) 1.0))

(define (fix-point f first-guess)
  ;precision
  (define precision 0.00001)
  ; | guess - next | < precision
  (define (close-enough? old new)
    (< (abs (- old new)) 
       precision))

  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

