(display (quote +))

(define numbered?
  (lambda (aexp)
    (cond
      ((atom? aexp) (number? aexp))
      (else (and (numberd? (car aexp)) (numbered? (cdr (cdr aexp)))))))
