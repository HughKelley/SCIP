;; Exercise 1.11.  A function f is defined by the rule that:
;;  f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.

;; Write a procedure that computes f by means of a recursive process.
;; Write a procedure that computes f by means of an iterative process. 


;; function

;; if n < 3 then n
;; if n > 3 then f(n-1) + 2f(n - 2) + 3f(n-3)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (my_function n)
  (if (< n 3)
	  n
	  (+ (* 1 (my_function (- n 1)))
		 (* 2 (my_function (- n 2)))
		 (* 3 (my_function (- n 3))))))

 (define (f n) 
    (cond ((< n 3) n) 
         (else (+ (f (- n 1)) 
                  (* 2 (f (- n 2))) 
                  (* 3 (f (- n 3))))))) 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; linear recursion

;; i think this is a little better but it's not totally linear

;; should maybe include a count of the distance between n and 3?

;; build one that works for 3. 

(define (lin_fun_start n)
  (if (< n 3 ) n
	  (lin_fun_end (- n 1))))

(define (lin_fun_end n))




;; f(3)
;; 1 * 2 + 2 * 1 + 3 * 0
;; 2 + 2 + 0
;; 4

;; 4
;; 1 * f(3) + 2 * 2 + 3 * 1
;; 1 * (1 * 2 + 2 * 1 + 3 * 0) + 2 * 2 + 3 * 1
;; 1 * (2 + 2 + 0) + 4 + 3
;; 4 + 4 + 3
;; 11

;; 5
;; 1 * f(4) + 2 * f(3) + 3 * f(2)
;; 1 * (1 * f(3) + 2 * 2 + 3 * 1) + 2 * (1 * 2 + 2 * 1 + 3 * 0) + 3 * (1 * 2 + 2 * 1 + 3 * 0)
;; 1 * (1 * (1 * 2 + 2 * 1 + 3 * 0) + 2 * 2 + 3 * 1) + 2 * (1 * 2 + 2 * 1 + 3 * 0) + 3 * (1 * 2 + 2 * 1 + 3 * 0)
;; 1 * (1 * (2 + 2 + 0) + 4 + 3) + 2 * (2 + 2 + 0) + 3 * (2 + 2 + 0)
;; 1 * (1 * (4) + 4 + 3) + 2 * (4) + 3 * (4)
;; 1 * ( 4 + 4 + 3) + 8 + 12
;; 11 + 8 + 12
;; 31?

;; need to do these expansions on paper, can' type fast or accurately enough. 
	  




(define (g n)
  (if (< n 3) n
	  ((calc (- n 1) (- n 2) (- n 3)))))

(define (calc l m n)
  (+ (g l) (g m) (g n)))
