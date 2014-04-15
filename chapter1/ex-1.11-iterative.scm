;we need to know what we should save 
(define (f n) 
  (if (<  n 3)
      n
      (f-helper 2 1 0 3 n))) 

(define (f-helper minus1 minus2 minus3 counter n)
  (if (>= counter n)
      (+ minus1 (* 2 minus2) (* 3 minus3))
      (f-helper (+ minus1 (* 2 minus2) (* 3 minus3))
                minus1
                minus2
                (+ counter 1) 
                n)))
