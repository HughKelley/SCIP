;; Exercise 1.17.

;; The exponentiation algorithms in this section are based on performing exponentiation by means of repeated multiplication. In a similar way, one can perform integer multiplication by means of repeated addition. The following multiplication procedure (in which it is assumed that our language can only add, not multiply) is analogous to the expt procedure:

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

;; This algorithm takes a number of steps that is linear in b. Now suppose we include, together with addition, operations double, which doubles an integer, and halve, which divides an (even) integer by 2. Using these, design a multiplication procedure analogous to fast-expt that uses a logarithmic number of steps. 

(define (* a b)
  (define (double x)
	(+ x x))
  (define (halve y)
	(/ y 2))
  (define (mult a d b c)
	(cond ((= c 0) b)
	 ((= c 1) (mult a d (+ d b) 0 ))
	 ((even? c)(mult a d (double b) (halve c)))
	 (else (mult a (+ d a) b (- c 1)))))
  (mult a 0 a b))
	 
;; notes after first go
;; first approach wasn't handling odd values for b 2 * 3 was 8 so basicaly it was doing 2^3 instead
;; second approach wasn't handling odd values for b because i was using a state variable to store the values added when c was odd
;; seems like this should work but the problem is that doubling is multiplication so the value gets messed up.

;; going to try to build up instead of drilling down.

(define (* a b)
  (define (double x)
	(+ x x))
  (define (halve y)
	(/ y 2))
  (define (mult a b value limit)
	(cond ((< b (double limit)) (mult a b (double value) (double limit)))
		  ((< b limit) (mult a b (
))))))
;; drilling down seems like the wrong way to go bc it doesn't use halve

(define (* a b)
  (define (double x)
	(+ x x))
  (define (halve y)
	(/ y 2))
  (define (mult a b value)
	(cond ((= b 1) a)
		  ((= b 2) (+ a value))
		  ((even? b) (mult (double a) (halve b) value))
		  (else (mult (+ a value) (- b 1) value))))
  (mult a b a))

;; looked at the solution, I was going for an iterative process when I was meant to do a recursive process. Do not need to maintain a state variable, just pile up the double calls on top of each other. Iterative process is the next exercise.

