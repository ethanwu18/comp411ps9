(quote 1)
(quote (cons 3 4))
(quote (cons cons(5 nil)))
(eval 4)
(eval (quote (+ 4 5)))
(list 4 4 4)
(list 4 5)
(< 4 3)
(< 3 5.0)
(<= 4 3)
(<= 3 5.0)
(> 4 3)
(> 3 5.0)
(>= 4 3)
(>= 3 5.0)
(and T T T T)
(and nil T nil)
(and nil)
(and (+ 1 3) (quote 8))
(or T T T T)
(or nil T nil)
(or nil)
(or (+ 1 3) (quote 8))
(not T)
(not nil)
(cond (T nil))
(cond (T))
(cond (nil T))
(cond ((+ 1 1) 5) (T nil) (nil T))
(cond (T nil) ((+ 1 1) 5) (nil T))
(cond (T 3) ((+ 1 1) 5) (nil T))