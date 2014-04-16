(define (sqrt x)
  (newton-method (lambda (y) (- (square y) x)) 1.0))


(define (square x) (* x x))

(define (newton-method g guess) 
  (fix-point (newton-transform g) guess))


;the give a g function, we can transform it to  the newton fucntion

(define (newton-transform g)
  (lambda (x) 
    ;here (deriv g) is a procedure
    (- x (/ (g x) ((deriv g) x)))))


(define (deriv g)
  (define dx 0.00001)
  (lambda (x)
    (/ (- (g (+ x dx))
          (g x))
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

