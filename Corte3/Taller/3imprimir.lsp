(defun ticket()
    (print "Digite el codigo del perro")
    (setq cod (read))
    (setq pos 0)
    (setq p (make-Perro))
    
    (loop
        (if (not (eq (aref v_turnos pos) 0))
            ;Si hay algo
            (progn
                (setq p (aref v_turnos pos))
                (if (eq cod (Perro-codigo p))
                    (progn
                        (format t "-------------------------------~%")
                        (format t "Informacion Perro")
                        (format t "Codigo Perro ~D~%" (Perro-codigo p))
                        (format t "Nombre Perro ~S~%" (Perro-nombre p))
                        (format t "Horario de atencion ~S: ~%" (cdr(assoc pos turno))) ;assoc con el indice saca el turno y cdr quita el primer elemento
                        (setq band 1)
                    )
                )
            )
            ;Sino
        )
    )
)