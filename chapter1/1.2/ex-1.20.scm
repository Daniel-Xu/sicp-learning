(gcd 206 40) 

(define (gcd a b) 
  (if (= b 0)
      a
      (gcd b (remainder a b))))

gcd 206 40


if(= 40 0)  
;result: gcd 40 (r 206 40)

if(= (r 206 40) 0) ;1
;result: gcd (r 206 40) (r 40 (r 206 40))

if(r 40 (r 206 40)) ;2
;result: gcd (r 40 (r 206 40)) (r (r 206 40) (r 40 (r 206 40))) 

if(r (r 206 40) (r 40 (r 206 40))) ;4
;result gcd (r (r 206 40) (r 40 (r 206 40))) (r (r 40 (r 206 40)) (r (r 206 40) (r 40 (r 206 40))))

if(r (r 40 (r 206 40)) (r (r 206 40) (r 40 (r 206 40)))) ;7
;result (r (r 206 40) (r 40 (r 206 40)))  4

 
;therefore 1+2+4+7+4 = 18

