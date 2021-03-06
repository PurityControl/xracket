#lang racket

(provide word-count)

(define (word-count word)
  (for/fold ([result (hash)])
            ([word (in-list (string-split word))])
            (hash-set result word (add1 (hash-ref result word 0)))))
