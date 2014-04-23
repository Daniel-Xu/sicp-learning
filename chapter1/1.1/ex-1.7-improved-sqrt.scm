(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good_enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))


(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))


;    abs(improved-guess - original-guess) / original-guess < 0.001 
(define (good_enough? guess x)
  (< (abs (-  guess (improve guess x))) (* guess 0.001)))

(define (avg x y)
  (/ (+ x y)
     2))
