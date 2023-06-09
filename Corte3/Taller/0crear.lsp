;creacion de estructuras, vec de estructuras
;los turnos e inicializacion de la estructura


(defun crear()
    ;crear el vector de turnos
    (setq v_turnos (make-array 5))

    ;creo la estructura del Perro
	(defstruct Perrro
		codigo
		nombre
	)

    ;crear los turnos (lista de asociacion)
    (setq turno '((0 "8 a 9am")(1 "9 a 10am")(2 "10 a 11am")(3 "2 a 3pm")(4 "3 a 4pm")))

    ;inicializacion del vector con ceros
    (setq x 0)
    (loop
        ;guardar un 0 en la posicion x
        (setf (aref v_turnos x) 0) 
        ;incrementar x
        (setq x (+ x 1))
        ;condicion de salida
        (when (> x 4) (return))
    )
)

;(assoc 2 turno) -> (2 "10 a 11am")