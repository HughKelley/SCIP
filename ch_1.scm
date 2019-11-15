
(define(sqrt-iter guess x)
  (if(good-enough? guessx)
	 guess
	 (sqrt-iter(improveguess x) x)))

(define(improveguessx)
  (averageguess(/xguess)))

(define(averagexy)
  (/ (+xy) 2))

(define(good-enough? guessx)
  (< (abs(- (squareguess)x)) 0.001))

(define(sqrtx)
  (sqrt-iter 1.0 x))
