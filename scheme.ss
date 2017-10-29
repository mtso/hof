(define (add x)
  (define (op y) (+ x y))
  op)

((add 1) 2)
