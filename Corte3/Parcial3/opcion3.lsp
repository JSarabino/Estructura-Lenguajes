;Dar informacion de una empresa y sus computadores asociados

;Busca la empresa en v_empresas con el nit dado
;recibe como parametro el nit de la empresa a buscar 
;retorna la posicion de la empresa en el vector o -1 si no se encuentra
(defun buscarPorNit (nit)
  ;inicializar posicion en -1
  (setq posicion -1) 

  ;inicializar x en 0 para iterar
  (setq x 0)

  (loop
    (if 
      (and 
        ;si v_empresas en la posicion x no es cero
        (not (eq (aref v_empresas x) 0)) 

        ;y el nit de la empresa en v_empresas en la posicion x es igual al nit dado
        ;NOTA: importante asegurarse que los nit son del mismo tipo
        (string= (format nil "~A" (Empresa-nit (aref v_empresas x))) (format nil "~A" nit))
      )
      ;se asigna la posicion de la empresa con el mismo nit
      (setq posicion x) 
    )
    ;Aumenta x en 1
    (setq x (1+ x))

    (when 
      ;Iterar hasta la longitud de v_empresas
      (>= x (length v_empresas)) 

      ;retorna la posicion
      (return posicion)
    ) 
  )
)

(defun infoEmpresaPorNit()
  (format t "~%")
  (format t "------------------------~%")
  (format t "  Busqueda de Empresas  ~%")
  (format t "------------------------~%")

  (print "Digite el nit de la empresa a buscar")
  (setq nit_empresa (read))

  ;Buscar la empresa con el nit ingresado y encontrar la posicion de la empresa en el vector v_empresas para manipularla
  (setq posicionEmpresa (buscarPorNit nit_empresa))

  ;Si se encontro la empresa entonces
  (if (not (= posicionEmpresa -1))
    (progn
      ;Imprime los datos de la empresa
      (print "Informacion de la empresa")
      (format t "~%NIT: ~A~%" (Empresa-nit (aref v_empresas posicionEmpresa)))
      (format t "Nombre: ~A~%" (Empresa-nombreEmpresa (aref v_empresas posicionEmpresa)))
      (format t "Direccion: ~A~%" (Empresa-direccion (aref v_empresas posicionEmpresa)))

      ;Para imprimir con un formato los computadores de la empresa
      ;Cuenta de los computadores que se faltan por asignar
      (setq contador 0)

      ;inicializar x en 0 para iterar
      (setq x 0)

      (loop
        ;si el computador en la empresa es diferente de cero entonces...
        (if (not (eq (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x) 0))
          (progn
            ;Datos del computador
            (format t "Computador ~A: " (+ x 1));
            (format t "Serial: ~A ; " (Computador-serial (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x)))
            (format t "Marca: ~A ; " (Computador-marca (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x)))
            (format t "Tipo disco duro: ~A~%" (Computador-tipoDiscoDuro (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x)))
          )
          ;si es 0, entonces lo agrega al contador
          (setq contador (1+ contador))
        ) 

        ;Aumenta x en 1
        (setq x (1+ x))

        (when 
          ;hasta la longitud de v_computadores
          (>= x (length (Empresa-v_computadores (aref v_empresas posicionEmpresa)))) 
          (return)
        ) 
      )

      ;Indica los computadores que falta o se puede asignar a la empresa
      (format t "Computadores sin asignar: ~A~%" contador)
    )

    ;Si no encontro la empresa
    (print "Empresa no encontrada.") ;Si no la encuentra
  )
)