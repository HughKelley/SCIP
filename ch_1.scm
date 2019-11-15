;; Ex 1.1

;; find written anwer

;; ex 1.2

;; find written answer

;; Ex 1.3

;; find written answer

;; Ex 1.4

;; find written answer

;; Ex 1.5

;; find written answer

;; Example Newtons Method

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;; Ex 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
;; 5

(new-if (= 1 1) 0 5)

;; cond evaluates all cases and then returns the result while if only evaluates the else statement if the first statement is false. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define(sqrt-iter guess x)
  (if(good-enough? guess x)
	 guess
	 (sqrt-iter(improve guess x) x)))

(define(improveguessx)
  (averageguess(/xguess)))

(define(averagexy)
  (/ (+xy) 2))

(define(good-enough? guessx)
  (< (abs(- (squareguess)x)) 0.001))

(define(sqrtx)
  (sqrt-iter 1.0 x))

;; 0

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
