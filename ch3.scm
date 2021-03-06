(define (rember a lat)
  (cond ((null? lat) '())
        ((eq? a (car lat)) (cdr lat))
        (else (cons (car lat) (rember a (cdr lat))))))

(define (displayln x) (display x) (newline) x)
(displayln (rember 'mint '(lamb chops and mint jelly)))
(displayln (rember 'mint '(lamb chops and mint flavored mint jelly)))
(displayln (rember 'toast '(bacon lettuce and tomato)))
(displayln (rember 'cup '(coffee cup tea cup and hick cup)))

(define (firsts l)
  (cond ((null? l) '())
        ((pair? (car l)) (cons (car (car l)) (firsts (cdr l))))
        (else (firsts (cdr l)))))

(displayln (firsts '((apple peach pumpkin) (plum pear cherry) (grape raisin pea) (bean carrot eggplant))))
(displayln (firsts '((a b) (c d) (e f))))
(displayln (firsts '()))
(displayln (firsts '((five plums) (four) (eleven green oranges))))
(displayln (firsts '(((five plums) four) (eleven green oranges) ((no) more))))

(define (insertR new old lat)
  (cond ((null? lat) '())
        ((eq? old (car lat)) (cons old (cons new (cdr lat))))
        (else (cons (car lat) (insertR new old (cdr lat))))))

(displayln (insertR 'topping 'fudge '(ice cream with fudge for dessert)))
(displayln (insertR 'jalapeno 'and '(tacos tamales and salsa)))
(displayln (insertR 'e 'd '(a b c d f g d h)))
