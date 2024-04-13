#lang racket
(provide calculate-frequencies)
(require racket/hash)

(define (count-letters ch h)
  (define ch1 (char-downcase ch))
  (if (char-alphabetic? ch)
      (if (hash-has-key? h ch1)
          (hash-update! h ch1 add1)
          (hash-set! h ch1 1))
      #f)
  h)

(define (calc-freq str)
  (foldl count-letters
         (make-hash)
         (string->list str)))

(define (calculate-frequencies texts)
  (foldl
   (lambda (str h)
     (begin (hash-union! h (calc-freq str) #:combine +)
            h))
   (make-hash)
   texts))
