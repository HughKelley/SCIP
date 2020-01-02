;; Exercise 1.16.

;; Design a procedure that evolves an iterative exponentiation process that uses successive squaring and uses a logarithmic number of steps, as does fast-expt.

;; (Hint: Using the observation that (bn/2)2 = (b2)n/2, keep, along with the exponent n and the base b, an additional state variable a, and define the state transformation in such a way that the product a bn is unchanged from state to state. At the beginning of the process a is taken to be 1, and the answer is given by the value of a at the end of the process. In general, the technique of defining an invariant quantity that remains unchanged from state to state is a powerful way to think about the design of iterative algorithms.) 


(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (bar b n)
  (define (foo b n a)
	(cond ((= n 0) a)
		  ((even? n) (foo (square b) (/ n 2) a))
		  (else (foo b (- n 1) (* a b)))))
  (foo b n 1))

;; i think this structure of defining the function inside the main function and then calling it is necessary for tail recursion? Doesn't seem like scope should effect how the complier treats it though, probably stylistic?

;; it was hard to handle the first and last two calcs when I was trying to initially handle and and even n and then get n = 1 and n =0 right.

;; Kind of figured it out

;(define (bar b n)
;  (cond ((= n 0) 1)
;		((= n 1) b)
;		((odd? n) (foo b (- n 1) b))
;		(else (foo b n 1))))

;(define (foo b n a)
;  (cond ((= n 1) a)
;		(else
;		 (cond ((= a 1) (foo b (/ n 2) (square b)))
;			   (else
;				(foo b (/ n 2) (square a)))))))


;; solution

 (define (iter-expt b n) 
   (define (iter a b n) 
     (cond ((= n 0) a) 
           ((even? n) (iter a (square b) (/ n 2))) 
           (else (iter (* a b) b (- n 1))))) 
   (iter 1 b n)) 
  
 (define (square x) (* x x))



;(define (foo b n a)
;  (cond ((= n 0) a)
;		((= n 1) b)
;		((odd? n) (foo b ((- n 1) b)))
;		(else (foo b (/ n 2) (* a a)))))
