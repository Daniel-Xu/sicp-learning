(define (count-change amount) (cc amount 5))


(define (cc amount kinds-of-coin)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coin 0)) 0)
        (else (+ (cc (- amount (show-value kinds-of-coin)) kinds-of-coin)
                 (cc amount (- kinds-of-coin 1))))))

(define (show-value kinds-of-coin)
  (cond ((= kinds-of-coin 1) 1)
        ((= kinds-of-coin 2) 5)
        ((= kinds-of-coin 3) 10)
        ((= kinds-of-coin 4) 25)
        ((= kinds-of-coin 5) 50)))

