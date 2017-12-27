#lang racket

(provide spongebobify)

(define (spongebobify s) (foldl (lambda (el index result)
                                        (string-append result (string (if (= 1 (modulo index 2)) (char-upcase el) (char-downcase el)))))
                                "" (string->list s) (stream->list (in-range (string-length s)))))
