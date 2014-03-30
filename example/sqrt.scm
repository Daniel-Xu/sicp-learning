(define (sqrt guess x)
  (if (good_enough? guess x)
    guess
    (sqrt (improve guess x) x)))


(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))


(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (avg x y)
  (/ (+ x y)
     2))
