(define (nth-root n x)
  (fix-point ((repeat average-damping (floor (log2 n))) (lambda (y) (/ x (multi (- n 1) y))))  1.0))

(define (log2 n)
  (/ (log n) (log 2)))

(define (fifth-root x)
  (fix-point ((repeat average-damping 2) (lambda (y) (/ x (*  y y y y))))  1.0))

;(fix-point (average-damping (lambda (y) (/ x (cube y)) ))  1.0))
(define (forth-root x)
  (fix-point ((repeat average-damping 2) (lambda (y) (/ x (cube y))))  1.0))

(define (multi n x)
  (define (iter n product)
    (if (< n 1)
        product
        (iter (- n 1) (* x product))))
  (iter n 1))

(define (repeat f n)
  (if (< n 1)
      (lambda (x) x)
      (lambda (x)
        (f ( (repeat f (- n 1)) x)))))


(define (cube x)
  (* x x x))

(define (average-damping f)
  (lambda (x) (average x (f x))))

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
