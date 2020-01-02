;; Exercise 1.12.

;; The following pattern of numbers is called Pascal's triangle.

;; 1
;; 1 1
;; 1 2 1
;; 1 3 3 1
;; 1 4 6 4 1

;; The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it.

;; Write a procedure that computes elements of Pascal's triangle by means of a recursive process. 

;; note

;;looking at solutions, the exercise wants you to compute a single element of pascals triangle identified by position using matrix notation

;; to do this start at the position as the root of a tree, compute the element above and to the left and compute the element above and to the right, If column is 0, return 1, if column equals row, return one, that's the outer edge of the triangle.


(define (pascal column row)
  (cond ((= row 0) 1)
		((= column row) 1)
		(else (+ (pascal (- column 1) row)
				 (pascal (- column 1) (- row 1))))))

;; works, nice and simple. My notes from looking at a solution helped a lot. Feel like I understand this one throughly.
