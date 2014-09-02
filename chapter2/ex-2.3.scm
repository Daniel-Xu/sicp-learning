;representation

;point
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

;rect
(define (make-rect dia-start dia-end) (cons dia-start dia-end))
(define (dia-start-rect rect) (car rect))
(define (dia-end-rect rect) (cdr rect))

;usage

(define (length-rect rect)
  (let ((dia-start (dia-start-rect rect))
        (dia-end (dia-end-rect rect)))
    (abs (- (x-point dia-start) (x-point dia-end)))))


(define (width-rect rect)
  (let ((dia-start (dia-start-rect rect))
        (dia-end (dia-end-rect rect)))
    (abs (- (y-point dia-start) (y-point dia-end)))))



(define (perimeter rect)
  (let ((width-of (width-rect rect))
        (length-of (length-rect rect)))
    (* (+ width-of length-of) 2)))


(define (area rect)
  (let ((width-of (width-rect rect))
        (length-of (length-rect rect)))
    (* width-of length-of)))


(define myrect 
  (make-rect (make-point 1 3)
             (make-point 3 1)))

(newline)
(display (area myrect))
(newline)
(display (perimeter myrect))

