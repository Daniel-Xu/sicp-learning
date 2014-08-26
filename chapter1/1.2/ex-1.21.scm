(define (smallest-dividor n) 
  (dividor n 2))

(define (dividor n start-test)
  (cond ((> (square start-test) n) n)
        ((divid? n start-test) start-test)
        (else (dividor n (+ start-test 1)))))

(define (divid? n start-test)
  (= (remainder n start-test)
     0))
