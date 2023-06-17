;Consulta el numero de computadores de marca asus en una empresa especifica

(defun cantidadAsusEmpresa()
  (format t "~%")
  (format t "------------------------~%")
  (format t " Busqueda de marca asus ~%")
  (format t "------------------------~%")

  (print "Digite el nit de la empresa a buscar la cantidad de computadores asus")
  (setq nit_empresa (read))

  ;buscar la empresa con el nit ingresado y encontrar la posicion de la empresa en el vector v_empresas para manipularla
  (setq posicionEmpresa (buscarPorNit nit_empresa))

  ;si se encontro la empresa entonces...
  (if (not (= posicionEmpresa -1))
    (progn
      ;cuenta de los computadores que son de la marca asus
      (setq contador 0)

      ;inicializar x en 0 para iterar
      (setq x 0)

      (loop
        ; si el computador en la empresa es diferente de cero
        (if 
          (and
            ;si el computador en la empresa es diferente de 0  
            (not (eq (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x) 0))

            ;y la marca es asus
            (string= (format nil "~A" (Computador-marca (aref (Empresa-v_computadores (aref v_empresas posicionEmpresa)) x))) "ASUS")
          )
          ;lo agrega al contador
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

      ;Indica la cantidad de computadores de marca asus para la empresa
      (format t "Computadores de marca asus: ~A~%" contador)
    )

    ;si no encontro la empresa
    (print "Empresa no encontrada.") ; Si no la encuentra
  )
)