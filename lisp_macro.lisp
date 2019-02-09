

  (defmacro square (x)
    `(* ,x ,x))
  
  (defun main ()
    (format t "~d" (/ 6 (square 2))))   ; prints 3/2 (Most LISPs have rational types)
  
  (macroexpand-1 '(square 42)) ;==> (* 42 42)




