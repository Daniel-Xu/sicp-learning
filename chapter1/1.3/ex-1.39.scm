
(define (count-frac n d k)
  (define (iter i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (cout-frac n d k)))))
  (iter 1))


(define (tan-cf x k)
  (define (n x)
    (if (= x 1) 
        x
        (- (* x x))))
  
  (define (d x)
    (- (* x 2) 1.0))
  (count-frac n d k))
