;we need to know what we should save 

;(define (f n) 
  ;(if (<  n 3)
      ;n
      ;(f-helper 2 1 0 3 n))) 

;(define (f-helper minus1 minus2 minus3 counter n)
  ;(if (>= counter n)
      ;(+ minus1 (* 2 minus2) (* 3 minus3))
      ;(f-helper (+ minus1 (* 2 minus2) (* 3 minus3))
                ;minus1
                ;minus2
                ;(+ counter 1) 
                ;n)))

(define (f n)
  ;3a  2b c
  (define (iter a b c n)
    (if (< n 3)
        c 
        (iter b c (+ (* 3 a) (* 2 b) c) (- n 1))
        ))
  (if (< n 3)
    n)
    (iter 0 1 2 n))
