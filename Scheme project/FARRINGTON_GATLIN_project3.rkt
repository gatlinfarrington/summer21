#lang scheme
(require "project3test.scm")

(define remove-next-to-last
  (lambda (lst)
    ;if list length 2 remove first
    (cond ((equal? (length lst) 2) (cdr lst))
          ;if length 1 or 0 return null
          ((equal? (length lst) 1) '())
            ((null? lst) '())
          ;otherwirse recursively find the last two and then remove the first of that pair
            (else (cons (car lst)(remove-next-to-last (cdr lst)))))))

(define (slope a b)
  ;slope (a,b)->(x,y) = (y-b)/(x-a)
  (/ (- (cdr b) (cdr a)) (- (car b) (car a))))

;remove-dups ~ check if first two are the same, if so remove the first. Continue the whole way through
(define (remove-dups lst)
(cond((null? lst) '())
     ((null? (cdr lst)) lst)
     ;just get rid of the first element when the first two are the same
  ((equal? (car lst) (car (cdr lst))) (remove-dups (cdr lst)))
  (else (cons (car lst) (remove-dups (cdr lst))))))

;invert
(define (invert lst)
  (cond
   ((null? lst) '())
   ((list? lst) (append (invert (cdr lst))
       (list (invert (car lst)))))
   (else lst)))

;helper procedure for s
(define (insert x y)
	(if (null? x) y
		(if (null? y) x
			(if (< (car x) (car y))
				(cons (car x) (insert (cdr x) y))
				(cons (car y) (insert (cdr y) x))))))

;insertion sort
(define (insertion-sort lst)
	(if (null? lst) '()
		(insert (list (car lst)) (insertion-sort (cdr lst)))))
;eval-poly
(define (eval-poly p x)
    (if (null? p) 0
        (+ (* (car (car p)) (expt x (cdr (car p)))) (eval-poly (cdr p) x))
    )
)
;get-poly-fun
(define (get-poly-fun p)
    (lambda (x) (eval-poly p x))
)

; Test code
(test-remove-next-to-last remove-next-to-last)
(test-slope slope)
(test-remove-dups remove-dups)
(test-invert invert)
(test-insertion-sort insertion-sort)
(test-eval-poly eval-poly)
(test-get-poly-fun get-poly-fun)
