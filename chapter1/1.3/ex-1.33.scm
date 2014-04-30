
(define (accumulate-filter combiner null-value term a next b filtering)
  (if (> a b)
      null-value
      (if (filtering a)
          (combiner (term a) (accumulate combiner null-value term (next a) next b filtering))
          (combiner null-value (accumulate-filter combiner null-value term (next a) next b filtering)))))
