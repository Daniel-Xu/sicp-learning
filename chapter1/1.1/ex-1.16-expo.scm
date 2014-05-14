;input b n 
;output b^n 

;my version
(define (fast-exp  b n)
  (define (iter i result)
    (cond ((= i 1) result)
          (else (iter (/ i 2) (square result)))))
  (cond ((= n 0) 1)
        ((even? n) (iter n b))
        (else (* b (iter (- n 1) b)))))

;another version
(define (fast-iter b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (square b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b n))


(define (even? n)
  (= (remainder n 2) 0))

(define (square x) 
  (* x x))

