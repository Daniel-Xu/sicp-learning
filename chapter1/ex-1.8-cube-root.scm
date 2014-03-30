(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess)) 
     3))

(define (cbrt-iter guess x)
  (if (good-enough? guess x) 
    guess 
    (cbrt-iter (improve guess x) x)))


(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))
