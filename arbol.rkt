#lang racket
(require rnrs/mutable-pairs-6)

(define matriz (list (list 0 0 0 0 0 0 0)
                     (list 0 0 0 0 0 0 0)
                     (list 0 0 0 0 0 0 0)
                     (list 0 0 0 0 0 0 0)
                     (list 0 0 0 0 0 0 0)
                     (list 0 0 0 0 0 0 0)
                     (list 0 0 0 0 0 0 0))
  )

(define (make-tree data childs-list)  (cons data childs-list))
(define (make-leaf-tree data) (make-tree data '()))

(define (data-tree tree)  (car tree))
(define (childs-tree tree) (cdr tree))
(define (leaf-tree? tree) (null? (childs-tree tree)))



(define arbol (make-tree matriz '())) ;Se crea un arbol con una matriz de 0 en su raíz

(define (create-tree-level tree) ;Se agregan 7 nodos hoja de matriz en 0
  (for ([i 7])
    (set! tree (append tree(list (make-leaf-tree matriz))))
    )
  (writeln tree)
)


;(create-tree-level arbol)

#|
(define prueba (list 1 2 3 4 5))
(writeln prueba)
(list-ref prueba 1)
|#

(define (change-list-value lista index value)
    (cond 
    [(empty? lista) empty]
    [(equal? index 0) (set! lista (cdr lista)) (change-list-value  (cons value lista) (- index 1) value )]
    [else (cons (car lista) (change-list-value (cdr lista) (- index 1) value))]
    )
)
    
(writeln (change-list-value (list 1 2 3 4 5) 4 7))


;(define tree 
 ; (make-tree '* 
  ;           (list (make-tree '+ (list (make-leaf-tree matriz  )
   ;                          (make-tree '* (list (make-leaf-tree matriz ) 
    ;                                             (make-leaf-tree matriz )))
     ;                                            (make-leaf-tree matriz )))
      ;                       (make-tree '- (list (make-leaf-tree matriz ))))))





