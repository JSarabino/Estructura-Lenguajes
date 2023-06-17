;creacion de estructuras y vec de estructuras

;Define las estructuras Empresa y Computador, ademas crea el vector de empresas y lo inicializa con ceros
(defun crearEmpresas()
    ;crear el vector de empresas  
    (setq v_empresas (make-array 2))

    ;inicializacion del vector de empresas con ceros
    (setq x 0)
    (loop
        (setf (aref v_empresas x) 0)
        (setq x (+ 1 x))
        (when (>= x 2)(return))
    )

    ;crear la estructura Empresa  
    (defstruct Empresa
        nit
        nombreEmpresa
        direccion
        v_computadores ;Vector de computadores
    )

    ;crear la estructura Computador  
    (defstruct Computador
        serial
        marca
        tipoDiscoDuro
    )

    ;mensaje que indica que el proceso se ha realizado
    (print "Estructuras creadas")
)














    ;crear instancia para manipular la estructura Empresa
    ;(setq objEmpresa (make-Empresa))

    ;crear los turnos (lista de asociación)
    ;(setq turno '((0 "8 a 9am")(1 "9 a 10am")(2 "10 a 11am")(3 "2 a 3pm")(4 "3 a 4pm")))