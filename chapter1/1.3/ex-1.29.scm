;input f a b n 

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))

  (define (iter i result)
    (if (> i n)
        result
        (iter (+ i 1) 
              (if (= (remainder i 2) 0)
                  (+ result (* 2 (y i)))
                  (+ result (* 4 (y i)))))))
  (* (/ h 3)
     (iter 1 (y 0))))


(define (cube x) (* x x x))

