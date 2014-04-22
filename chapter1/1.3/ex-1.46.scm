(define (iterative-improving good-enough? improve)
  (lambda (guess) 
    (if (good-enough? guess (improve guess))
        (improve guess)
        ((iterative-improving good-enough? improve) (improve guess)))))


(define (fix-point f first-guess)
  (define precision 0.00001)
  ; | guess - next | < precision
  (define (good-enough? old new)
    (< (abs (- old new)) 
       precision))
  ((iterative-improving good-enough? f) first-guess))


(define (average-damping f)
  (lambda (x) (/ (+ x (f x)) 2)))

(define (sqrt x)
  (fix-point (average-damping (lambda (y) (/ x y))) 1.0))

