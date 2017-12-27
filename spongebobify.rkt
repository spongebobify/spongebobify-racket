#lang racket

(provide spongebobify)

(define (spongebobify s) (let ([up #t]) (foldl (lambda (a result)
                          (set! up (not up))
                          (string-append result (string (if up (char-upcase a) (char-downcase a)))))
                        "" (string->list s))))