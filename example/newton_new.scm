(define (sqrt x) 
  (newton-method (lambda (y) (- (square y) x)) 1.0))



(define (square x) (* x x))

(define (newton-method f guess)
  (fix-point (lambda (x) (- x (/ (f x) ((deriv f) x)))) guess))

(define (deriv g) 
  (define dx 0.00001)
  (lambda (x) 
    (/ (- (g (+ x dx)) (g x))
       dx)))

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

