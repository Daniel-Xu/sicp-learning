(define (log-base b)
  (define (log-compute x)
    (/ (log x) (log b)))
  log-compute) 

(define log-base-2 
  (log-base 2))

(define log-base-3
  (log-base 3))

(define (cons x y)
  (* (expt 2 x) (expt 3 y)))

(define (car z) 
  (define (iter-car a init)
    (if (> (remainder a 2) 0)
        init
        (iter-car (/ a 2) (+ init 1))))
  (iter-car z 0))

(define (cdr z) 
  (define (iter-car a init)
    (if (> (remainder a 3) 0)
        init
        (iter-car (/ a 3) (+ init 1))))
  (iter-car z 0))
