;point
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

;segment
(define (make-segment start-point end-point) (cons start-point end-point))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))


;usage

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment segment)
  (define (avg a b) (/ (+ a b) 2))
  (let ((start (start-segment segment))
        (end (end-segment segment)))
       (make-point (avg (x-point start) (x-point end))
                   (avg (y-point start) (y-point end)))))

;test 
(define seg (make-segment (make-point 1 1)
                          (make-point 3 3)))

(print-point (midpoint-segment seg))
