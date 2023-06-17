;Registrar una empresa

;Registra una empresa pidiendo los datos nit, nombre y direccion, despues agrega el vector de computadores inicializado con ceros
(defun registrarEmpresa()
  (format t "~%")
  (format t "---------------------~%")
  (format t "Registro de Empresas ~%")
  (format t "---------------------~%")

  ;leer la posicion de la empresa a registrar
  (print "Digite el numero de la empresa a registrar, Escoja entre 0 y 1")
  (setq num_empresa (read))

  ;Si la empresa en esa posicion es 0, es decir, si no hay una empresa en num_empresa entonces...
  (if (eq (aref v_empresas num_empresa) 0)
      (progn
        (print "Cupo disponible")
        (print "Ingrese los datos de la empresa")

        ;Crear objeto empresa
        (setq objEmpresa (make-Empresa))

        ;Crear el vector de computadores que se le va a agregar al objEmpresa
        (setq v_computadores (make-array 3))

        ;Inicialización del vector de computadores con ceros
        (setq x 0)
        (loop
         (setf (aref v_computadores x) 0)
         (setq x (+ 1 x))
         (when (>= x 3) (return))
        )

        ;Agregar el Nit
        (print "Nit de la empresa:")
        (setq nit (read))
        ;TODO: validar que el nit sea > 0
        (setf (Empresa-nit objEmpresa) nit)

        ;Agregar el nombre
        (print "Nombre de la empresa:")
        (setq nom (read))
        (setf (Empresa-nombreEmpresa objEmpresa) nom)

        ;Agregar la dirección
        (print "Direccion de la empresa:")
        (setq dir (read))
        (setf (Empresa-direccion objEmpresa) dir)

        ;Agregar el vector de computadores inicializado en ceros
        (setf (Empresa-v_computadores objEmpresa) v_computadores)

        ;Agregar el objEmpresa al vector v_empresas en la posición num_empresa 
        (setf (aref v_empresas num_empresa) objEmpresa)

        ;Mensaje exitoso
        (print "Empresa agregada.")
       )
      ;Si no esta disponible ninguna posicion en v_empresas
      (print "Cupo no disponible")
  )
)

