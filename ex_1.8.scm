
;; 
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

;; pass to function an initial guess and the number to find the root of
;; compare the two arguments.
;; if good enough return the guess,
;; else pass the target and current guess to the functoin again.

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; initialization function with magic number initial guess 1.0
(define (sqrt x)
  (sqrt-iter 1.0 x))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; improved guess is
;; (x/(y*y) + 2y)/3

;; (/ (+ (/ x (* y y)) (* 2 y)) 3)
;; (/ (+ (/ target (* guess guess)) (* 2 guess)) 3)


(define (cube_rt_iter guess target)
  (if (cube-good-enough? guess target)
	  guess
	  (cube_rt_iter (improve-cube guess target)
					target)))

(define (improve-cube guess target)
  (/ (+ (/ target (* guess guess)) (* 2 guess)) 3))


(define (cube-good-enough? guess target)
  (< (abs (- (cube guess) target)) 0.001))

(define (cube x)
  (* (* x x) x))

(define (find-cube target)
  (cube_rt_iter 1.0 target))
  
