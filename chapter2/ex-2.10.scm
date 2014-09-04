(define (div-interval x y)
  (if (>= 0 (* (upper-bound y) (lower-bound y)))
      (error "Can not solve this problem with spaning 0 interval" y)
      (mul-interval
        x
        (make-interval (/ 1.0 (upper-bound y))
                       (/ 1.0 (lower-bound y))))))
