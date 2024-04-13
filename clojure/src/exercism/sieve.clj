(ns exercism.sieve)

(defn sieve
  "Use Sieve of Eratosthenes algorithm to find prime numbers up to n"
  [n]
  (loop [primes (range 2 (inc n))
         output []]
     (if (empty? primes)
       output
       (recur (filter #(not= 0 (mod % (first primes))) (rest primes)) 
              (conj output (first primes))))))
