#lang racket

(provide convert)

(define (divisors n)
  (list (if (= 0 (modulo n 3)) "Pling" "")
        (if (= 0 (modulo n 5)) "Plang" "")
        (if (= 0 (modulo n 7)) "Plong" "")))

(define (convert number)
  (define strs (string-join (divisors number) ""))
  (if (string=? "" strs)
      (~a number)
      strs))

