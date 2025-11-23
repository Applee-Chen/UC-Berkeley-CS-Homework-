(define (ascending? s)
  (if (or (null? s) (null? (cdr s)))
      #t
      (and (<= (car s) (car (cdr s))) (ascending? (cdr s)))))


(define (my-filter pred s) 
    (if (null? s) nil (if (pred (car s)) (append (list(car s)) (my-filter pred (cdr s))) (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) 
  (if (null? lst1)
      lst2 
      (if (null? lst2)
          lst1
          (append (list (car lst1))
                  (interleave lst2 (cdr lst1)))))) 


(define (no-repeats s)
    (if (null? s) 
        nil 
        (cons (car s) 
            (filter (lambda (x) (not (= x (car s)))) (no-repeats (cdr s))))))
