
;input n, d procedure
;k num

;output: value
;wishful thinking

(define (count-frac n d k)
  (define (iter i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (cout-frac n d k)))))
  (iter 1))

;it needs k =10 to be accurate 


;iterative version

;value that I need to save 

;i and every time's result
;this is tail recursion
(define (count-frac n d k)
  (define (c-iter i result)
    (if (= i 0)
        result 

        (c-iter (- i 1) 
                (/ (n i)
                   (+ (d i) result)))))
  (c-iter k 0.0))


