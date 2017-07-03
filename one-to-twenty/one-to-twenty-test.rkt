#lang racket/base
(require rackunit
         rackunit/text-ui
         "one-to-twenty.rkt")

(define one-to-twenty-tests
  (test-suite
   "Tests for problems 1 to 20"

   "problem #1"
   (test-case
       "Enter a value which will make the form (= __ #t) evaluate to true"
     (check-eq? #t #t))

   "problem #2"
   (test-case
       "Enter enough to fill in the blank (= (- 10 (* 2 3)) __)"
     (check-eq? (- 10 (* 2 3)) 4))

   "problem #3"
   (test-case
       "Enter value which makes form equal (= __ (string-upcase 'hello world'))"
     (check-equal? (string-upcase "hello world") "HELLO WORLD")
     )
   ))

(run-tests one-to-twenty-tests)
