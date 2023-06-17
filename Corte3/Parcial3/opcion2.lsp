;Registrar un computador a una empresa 

;Busca la posicion libre en el v_computadores de una empresa 
;recibe como parametro la posicion de la empresa en el v_empresas
;retorna la posicion donde se puede ingresar un computador o -1 si no hay una posicion vacia
(defun buscarPuesto (posicionEmpresa)
  ; inicializar posicion en -1
  (setq posicion -1)

  ; inicializar x en 0 para iterar
  (setq x 0) 

  (loop
    ;Si la posicion en v_computadores de la empresa es 0
    (if (eq (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x) 0)
        ;se asigna la posicion libre en el v_computadores de la empresa
        (setq posicion x) 
    )

    ;Aumenta x en 1
    (setq x (1+ x))

    (when 
      ;condicion de salida
      (or 
        ;O llega al final de v_computadores, es decir, recorrio v_computadores y no encontro espacio
        (>= x (length (Empresa-v_computadores (aref v_empresas posicionEmpresa))))

        ;O encuentra una posicion en el if y cambia posicion de -1 a la posicion en la que puede ingresar un computador
        (not (eq posicion -1))
      )

      ;retorna la posicion
      (return posicion)
    )
  )
)

;Realiza el registro de un computador, valida la empresa y que halla un puesto libre en v_computadores de la empresa
;NOTA: para hacer la validacion de la empresa utiliza la funcion buscarPorNit creada en el archivo opcion3.lsp
(defun registrarComputador()
  (format t "~%")
  (format t "------------------------~%")
  (format t "Registro de Computadores ~%")
  (format t "------------------------~%")

  (print "Digite el nit de la empresa a registrar un computador")
  (setq nit_empresa (read))

  ;Buscar la empresa con el nit ingresado y encontrar la posicion de la empresa en el vector v_empresas para manipularla
  (setq posicionEmpresa (buscarPorNit nit_empresa))

  ;Si se encontro la empresa entonces...
  (if (not (= posicionEmpresa -1))
    (progn
      ;Buscar si hay puestos disponibles en el v_computadores de la empresa
      (setq posicionComputador (buscarPuesto posicionEmpresa))

      ;Si se encontro un puesto entonces...
      (if (not (= posicionComputador -1))
        (progn
          (print "Ingrese los datos del computador")
          
          ;Crear objeto computador
          (setq objComputador (make-Computador))
          
          ;Agregar el serial
          (print "Serial del computador:")
          (setq serial (read))
          ;TODO: validar que el serial sea > 0
          (setf (Computador-serial objComputador) serial)

          ;Agregar la marca
          (print "Marca del computador:")
          (setq marca (read))
          (setf (Computador-marca objComputador) marca)

          ;Agregar el tipo de disco duro
          (print "Tipo de disco duro del computador:")
          (setq tipo (read))
          (setf (Computador-tipoDiscoDuro objComputador) tipo)

          ;Agregar el objeto Computador objComputador a la posición posicionComputador de la empresa
          (setf (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) posicionComputador) objComputador)

          ;Mensaje exitoso
          (print "Computador agregado.")
        )

        ;Si no encontro un lugar vacio en v_computadores de la empresa
        (print "No hay puesto para registrar un computador en la empresa.")
      )

    )

    ;Si no encontro la empresa
    (print "Empresa no encontrada.") ;Si no la encuentra
  )
)
