(define (tri row col)
  (cond ((or (= col row) (= col 1)) 1)
        ((> col row) 0)
        (else (+ (tri (- row 1) (- col 1))
                 (tri (- row 1) col)))))
