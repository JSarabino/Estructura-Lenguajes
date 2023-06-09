(setq vec (make-array 5))
(setq a 0)
(loop
    (format t "Digite un numero en la posicion ~D: " a)
	(setf (aref vec a) (read))
    (setq a (+ a 1))
	(when (> a 4) (return))
)
(print vec)

(setq b -2)
(loop
    (setq b (+ b 2))
    (when (> a 4) (return))
    (format t "Posicion par ~D: " (aref vec b))
	
	
)

(setq a -2)
(loop 
  (setq a (+ a 2))
  (when (> a 4) (return))
  (format t "~D " (aref vec a))
)