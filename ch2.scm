(define (displayln x) (display x) (newline) x)

(define (lat? l)
  (cond ((null? l) #t)
        ((not (pair? (car l))) (lat? (cdr l)))
        (else #f)))

(displayln (lat? '(Jack Sprat could eat no chicken fat)))
(displayln (lat? '((Jack) Spart could eat no chicken fat)))
(displayln (lat? '(Jack (Spart could) eat no chicken fat)))
(displayln (lat? '()))
