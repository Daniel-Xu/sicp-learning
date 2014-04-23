(define (calc a b c)
  (cond ((or (and (> a b) (> b c)) (and (> b a) (> a c))) (+ (* a a) (* b b)))
        ((or (and (> c b) (> b a)) (and (> b c) (> c a)))  (+ (* b b) (* c c))) 
        (else (+ (* a a) (* c c)))))

