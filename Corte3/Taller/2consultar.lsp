(defun consultar_turnos()
    (print "Turnos asignados")
    (setq x 0)
    (loop
        (print (aref v_turnos x))
        (setq x (+ x 1))
        (when (> x 4)(return))
    )
)