#lang racket

(provide acronym)

(define (acronym phrase)
  (string-join (for*/list ([s (string-split (string-replace phrase #rx"[^a-zA-Z\']" " "))])
    (string-upcase (string (string-ref s 0)))) ""))
