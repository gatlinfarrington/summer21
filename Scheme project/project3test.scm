#lang scheme
; Project 4 test module
; YOU SHOULD NOT MODIFY THIS FILE!

(provide test-remove-next-to-last)
(provide test-slope)
(provide test-remove-dups)
(provide test-invert)
(provide test-insertion-sort)
(provide test-eval-poly)
(provide test-get-poly-fun)


(define test-remove-next-to-last
  (lambda (x)
  (begin
    (write "Question 1: remove-next-to-last ")(newline)
    (write (x '(1 -2 4 -8)))(newline)
    (write (x '(1 2 3 4)))(newline)
    (write (x '(2 3 4 5 7 9)))(newline)
    (write (x '(-1 -2 -3 -4 -5)))(newline)
    )))

(define test-slope
  (lambda (x)
  (begin
    (newline)
    (write "Question 2: slope")(newline)
    (write (x '(-4 . -4) '(2 . 2)))(newline)
    (write (x '(1 . 7) '(4 . 11)))(newline)
    (write (x '(-2 . 8) '(3 . -4)))(newline)
    )))
   
(define test-remove-dups
  (lambda (x)
  (begin
    (newline)
    (write "Question 3: remove-dups ")(newline)
    (write (x '(a b c d)))(newline)
    (write (x '(n n n o o o o t b r r r o k e e e e !)))(newline)
    (write (x '(T T T T T T T T T T T)))(newline)
    )))

(define test-invert
  (lambda (x)
  (begin
    (newline)
    (write "Question 5: invert")
    (newline)
    (write (x 'a))(newline)
    (write (x '(1 2 3)))(newline)
    (write (x '(1 2 (3 4) (5 (6 7 (8))) 9)))(newline)
    )))

(define test-insertion-sort
  (lambda (x)
    (let
        ((lst1 '(1 2 3 4 6 7 8 9 10))
         (lst2 '(1 3 2 9 3 8 9 10 11 1 2))
         (lst3 '(1 3 9 3 9 7 5)))
      (begin
        (newline)
        (write "Question 5: insertion-sort")(newline)
        (write (x lst1))(newline)
        (write (x (reverse lst1)))(newline)
        (write (x lst2))(newline)
        (write (x (reverse lst2)))(newline)
        (write (x lst3))(newline)
        (write (x (reverse lst3)))(newline)
    ))))


(define  test-eval-poly
  (lambda (x)
    (let ((poly1 '((1 . 3) (1 . 2) (1 . 1) (1 . 0)))
          (poly2 '((1 . 3) (2 . 2) (3 . 1) (4 . 0))))
      (begin
        (newline)
        (write "Question 6a: eval-poly")(newline)
        (write (x poly1 1))(newline)
        (write (x poly1 -2))(newline)
        (write (x poly1 4))(newline)
        (write (x poly2 1))(newline)
        (write (x poly2 -2))(newline)
        (write (x poly2 4))(newline)
        ))))

(define  test-get-poly-fun
  (lambda (x)
    (let ((poly1 '((1 . 3) (1 . 2) (1 . 1) (1 . 0)))
          (poly2 '((1 . 3) (2 . 2) (3 . 1) (4 . 0))))
      (let
          ((f1 (x poly1))
           (f2 (x poly2)))
        (begin
          (newline)
          (write "Question 6a: get-poly-fun")(newline)
          (write (x poly1))(newline)
          (write (x poly2))(newline)
          (write (f1 1))(newline)
          (write (f1 -2))(newline)
          (write (f1 4))(newline)
          (write (f2 1))(newline)
          (write (f2 -2))(newline)
          (write (f2 4))(newline)
          )))))







