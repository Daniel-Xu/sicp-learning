(define (smallest-dividor n) 
  (dividor n 2))

(define (next dividor)
  (if (= dividor 2)
      3
      (+ dividor 2)))

(define (dividor n start-test)
  (cond ((> (square start-test) n) n)
        ((divid? n start-test) start-test)
        (else (dividor n (next start-test)))))

(define (divid? n start-test)
  (= (remainder n start-test)
     0))
