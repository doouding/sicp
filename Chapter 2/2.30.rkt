#lang racket

(define (square-tree tree)
    (cond ((null? tree) (list))
          ((not (pair? tree)) (square tree))
          (else (cons (square-tree (car tree))
                      (square-tree (cdr tree))))))

(define (square-tree-map tree)
    (map (lambda (sub-tree)
            (cond ((pair? sub-tree) (square-tree-map sub-tree))
                  (else (square sub-tree))))
        tree))