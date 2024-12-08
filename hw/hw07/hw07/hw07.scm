(define (square n) (* n n))

(define (pow base exp) 
  (cond ((zero? exp) 1)
        ((= exp 1) base)
        ((= exp 2) (square base))
        ((even? exp) (pow (pow base (quotient exp 2)) 2))
        ((odd? exp) (* base (pow (pow base (quotient exp 2)) 2)))))
 
(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))
