#lang racket

(provide spongebobify)

(define (spongebobify text [start-lower #t]) (foldl (lambda (el index result)
                                        (string-append result (string (if (xor start-lower (= 0 (modulo index 2))) (char-upcase el) (char-downcase el)))))
                                "" (string->list text) (stream->list (in-range (string-length text)))))
