(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))


(define (make-center-percentage c p)
  (let ((width (/ p 100.0)))
   (make-interval (- c w)
                  (+ c w))))


(define (percentage i)
  (let ((w (/ (- (upper-bound i) (lower-bound i)) 2))
        (c (/ (+ (upper-bound i) (lower-bound i)) 2)))
    (* (/ w c) 100.0))) 
