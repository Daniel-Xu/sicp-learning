
(define (count-frac n d k)
  (define (iter i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (cout-frac n d k)))))
  (iter 1))


(define (n x) 1.0)
(define (d x)
  (if (= (remainder x 3) 2)
      (/ (+ x 1) 1.5)
      1))


(define (el k)
  (+ 2.0 (count-frac n d k)))

