#lang racket/base

(provide leap-year?)

(define (leap-year? year)
  (define d4   (= 0 (modulo year 4)))
  (define d100 (= 0 (modulo year 100)))
  (define d400 (= 0 (modulo year 400)))
  (or (and d4 (not d100))
      (and d4 d400)))

