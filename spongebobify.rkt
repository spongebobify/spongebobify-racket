#lang racket

(provide spongebobify)

(define (spongebobify text [start-lower #t])
  (list->string (map (lambda (el index)
                       ((if (xor start-lower (= 0 (modulo index 2))) char-upcase char-downcase) el))
                     (string->list text) (range (string-length text)))))
