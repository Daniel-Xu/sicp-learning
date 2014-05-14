(define (multi-add b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (double b) (/ n 2)))
          (else (iter (+ a b) b (- n 1)))))
  (iter 0 b n))


(define (add-rec b n)
  (cond ((= n 0) 0)
        ((even? n) (double (add-rec b (/ n 2))))
        (else (+ b (add-rec b (- n 1))))))


(define (double n)
  (+ n n))
(define (half n)
  (/ n 2))
