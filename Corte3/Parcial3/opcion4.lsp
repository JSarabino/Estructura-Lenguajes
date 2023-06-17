;Buscar un computador especifico por serial

;Busca el computador en la empresa encontrada en v_empresas
;recibe como parametro la posicion de la empresa y el serial del computador a buscar
;retorna la posicion del computador en v_computadores de la empresa o -1 si no se encuentra
(defun buscarPorSerial (posicionEmpresa serial)
  ;inicializar posicion en -1
  (setq posicion -1)

  ;inicializar x en 0 para iterar
  (setq x 0) 

  (loop
    (if 
      (and 
        ;si en v_computadores de la empresa el computador en la posicion x no es cero
        (not (eq (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x) 0))

        ;y el serial del computador es igual al serial dado como parametro
        (string= (format nil "~A" (Computador-serial (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x))) (format nil "~A" serial))
      )
      ;asigna la posicion del computador encontrado
      (setq posicion x)
    )

    ;Aumenta x en 1
    (setq x (1+ x))

    (when
      ;Iterar hasta la longitud de v_computadores de la empresa
      (>= x (length (Empresa-v_computadores (aref v_empresas posicionEmpresa)))) 

      ;retorna la posicion del computador en v_computadores de la empresa
      (return posicion)
    ) 
  )
)

(defun BuscarComputador()
  (format t "~%")
  (format t "------------------------~%")
  (format t "Busqueda de Computadores~%")
  (format t "------------------------~%")

  (print "Digite el nit de la empresa a buscar un computador")
  (setq nit_empresa (read))

  ;buscar la empresa con el nit ingresado y encontrar la posicion de la empresa en el vector v_empresas para manipularla
  (setq posicionEmpresa (buscarPorNit nit_empresa))

  ;si se encontro la empresa entonces...
  (if (not (= posicionEmpresa -1))
    (progn
      (print "Digite el serial del computador")
      (setq serial_computador (read))

      ;buscar la posicion del computador enviando la posicion de la empresa
      (setq posicionComputador (buscarPorSerial posicionEmpresa serial_computador))

      ;si se encontro el computador entonces...
      (if (not (= posicionComputador -1))
        (progn
            ;Datos del computador especifico
            (print "Computador encontrado:")
            (format t "~%Serial: ~A ; " (Computador-serial (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) posicionComputador)))
            (format t "Marca: ~A ; " (Computador-marca (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) posicionComputador)))
            (format t "Tipo disco duro: ~A~%" (Computador-tipoDiscoDuro (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) posicionComputador)))
        )

        ;si no se encontro el computador
        (print "No exite el computador en la empresa.")
      )
    )

    ;si no encontro la empresa
    (print "Empresa no encontrada.") ;Si no la encuentra
  )
)