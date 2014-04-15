(define (fib n) (fib-helper 1 1 n))

(define (fib-helper product counter n)
  (if (> counter n)
      product
      (fib-helper (* product counter) (+ counter 1) n)))

