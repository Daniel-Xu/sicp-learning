
(define (repeat f n)
  (if (< n 1)
      (lambda (x) x)
      (lambda (x)
        (f ( (repeat f (- n 1)) x)))))

(define (square x) (* x x))
