#lang racket

(provide binary-search)

(define (binary-search array value)
  (define vlength (vector-length array))
  (define midIndex (floor (/ vlength 2)))
  (define midValue (if (= vlength 0) -1 (vector-ref array midIndex)))
  (if (or (= vlength 0) (> (vector-ref array 0) value) (< (vector-ref array (sub1 vlength)) value)) #f 
  (if (= midValue value) midIndex
      (if (> midValue value) (binary-search (vector-take array midIndex) value)
          ((lambda (n x) (if x (+ n x) #f)) midIndex (binary-search (vector-drop array midIndex) value))))))