(define (inc n) (+ 1 n))
(define (cube n) (* n n n))


; sum is a procedure
; term and next are higer order procedures
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next  b))))


(define (sum-cube a b)
  (sum cube a inc b))

