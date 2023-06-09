(defun registrar_turno()
    (format t "~%")
    (format t "----------------------------")
    (format t "Turnos ~%")
    (format t "----------------------------")
    (print "Turno 0: 8 a 9am")
    (print "Turno 1: 9 a 10am")
    (print "Turno 2: 10 a 11am")
    (print "Turno 3: 2 a 3pm")
    (print "Turno 4: 3 a 4pm")

    ;crear instancia para manipular la estructura Perro
    (setq p (make-Perro))

    (print "Digite el numero del turno a reservar, escoja entre 0 y 4: ")
    (setq num_turno (read))
    ;Si el vector en la posicion num_turno es igual a 0
    (if (eq (aref v_turnos num_turno) 0) 
            ;Si cumple
            (progn 
                ;Pedir los datos del perro y asignarlo al perro p
                (print "Turno disponible") 
                (print "Ingrese los datos del perro")
                (print "Codigo perro:")
                (setq cod(read))
                (setf (Perro-codigo p) cod)
                (print "Nombre perro:")
                (setq nom(read))
                (setf (Perro-nombre p) nom)

                ;Asignar el perro al vector en la posicion num_turno
                (setf (aref v_turnos num_turno) p)
            ) 
            ;Sino cumple
            (progn
                (print "Turno no disponible.")
            )
    )
)