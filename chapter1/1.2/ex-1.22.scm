(define (smallest-dividor n) 
  (dividor n 2))

(define (dividor n start-test)
  (cond ((> (square start-test) n) n)
        ((divid? n start-test) start-test)
        (else (dividor n (+ start-test 1)))))

(define (divid? n start-test)
  (= (remainder n start-test)
     0))

(define (prime? n)
  (= (smallest-dividor n) n))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))


(define (start-prime-test n start-time)
  
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


;iterative recursion
(define (search-for-primes start-num last)
  (define (iter cur last)
    (if (<= cur last) (timed-prime-test cur))
    (if (<= cur last) (iter (+ cur 2) last)))
  
  (iter (if (even? start-num) (+ start-num 1) start-num)
        (if (even? last) (- last 1) last)))



