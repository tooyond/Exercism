#lang racket

(provide armstrong-number?)

(define (armstrong-number? n)
  (define str (number->string n))
  (define digit (string-length str))
  (define armNumber (for/fold ([sum 0])
            ([i (in-range 0 digit)])
    (define num (- (char->integer (string-ref str i)) 48))
    (+ sum (expt num digit))))
  (= armNumber n))


