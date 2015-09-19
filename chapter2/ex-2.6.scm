; how many times to call f
(define zero 
  (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x))))) 

(define one
  (lambda (f) (lambda (x) (f x)))
(define two 
  (lambda (f) (lambda (x) (f (f x)))))


(define (plus a b)
  (lambda (f) (lambda (x) ((a f) ((b f) x)))))


;how to use 

;4
((one squre) 2)

;16
((two squre) 2)