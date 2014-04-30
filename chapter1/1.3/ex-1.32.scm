(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))


(define (accumulate-i combiner null-value term a next b)
  (define (accumulate-iter i result)
    (if (> i b)
        result
        (accumulate-iter (next i) (combiner result (term i)))))
  (accumulate-iter a 1))


;(define (product term a next b)
  ;(accumulate (lambda (x y) (* x y)) 1 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))
(define (product-i term a next b)
  (accumulate-i (lambda (x y) (* x y)) 1 term a next b))


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
  (* 4.0 (product pi-term 1 next 1000)))

(define (pi-i) 
  (* 4.0 (product-i pi-term 1 next 1000)))


