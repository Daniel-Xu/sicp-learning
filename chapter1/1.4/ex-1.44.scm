
;input procedure, output procedure

(define (smoth f)
  (define dx 0.0001)
  (lambda (x)
    (/ (+ (f (- x dx))
          (f x)
          (f (+ x dx)))
       3)))

(define (nth-smoth f n)
  ((repeat smoth n) f))


;how to write program

;first you ensure the input and output
;like aboving, you know output is procedure,
;so you know lambda should be used
