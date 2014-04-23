;iterative recursion
(define (product term a next b)
  (define (iter i result)
    (if (> i b)
        result
        (iter (next i) (* result (term i)))))
  (iter a 1))

;linear recursion
(define (product-l term a next b)
  (if (> a b)
      1
      (* (term a) (product-l term (next a) next b))))


(define (id n) n)

(define (fac n)
  (product-l id 1 next n))

(define (pi-term i)
  (if (even? i)
      (/ (+ i 2) (+ i 1))
      (/ (+ i 1) (+ i 2))))

(define (next i)
  (+ i 1))

(define (pi)
  (* 4.0 (product-l pi-term 1 next 1000)))





