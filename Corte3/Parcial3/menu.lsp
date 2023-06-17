;Realizado por: jsarabino@unicauca.edu.co y geralmore@unicauca.edu.co
(load "crearEstructuras.lsp") ;Cargar archivo que contiene la definicion de las estructuras
(load "opcion1.lsp") ;Cargar archivo que contiene la logica de la opcion 1
(load "opcion2.lsp") ;Cargar archivo que contiene la logica de la opcion 2
(load "opcion3.lsp") ;Cargar archivo que contiene la logica de la opcion 3
(load "opcion4.lsp") ;Cargar archivo que contiene la logica de la opcion 4
(load "opcion5.lsp") ;Cargar archivo que contiene la logica de la opcion 5

;Mensaje de bienvenida
(defun mensaje()
  (print "Bienvenido!")
)

;LLamadas a las funciones que crean las estructuras Empresa y Computador
(crearEmpresas)

;Menu
(loop
    
	(print " ===========================================")
	(print " |         EMPRESAS DE REPARACION          |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Registrar Empresa de reparacion de computadores.")
	(print "   2.   Registrar Computador.")
	(print "   3.   Buscar Empresa de reparacion de computadores por nit.")
    (print "   4.   Buscar para una Empresa de reparacion de computadores especifica, un Computador especifico.")
    (print "   5.   Consultar el numero de computadores que son de marca ASUS para una empresa de reparacion de computadores especifica.")
	(print "   6.   Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
    (setq opcion (read))
    ;TODO: que al leer la opcion valide si es un numero
  	(case opcion
        ;llamado a las diferentes funciones en los archivos .lsp
  		(1 (registrarEmpresa))
		(2 (registrarComputador))
		(3 (infoEmpresaPorNit))
        (4 (BuscarComputador))
        (5 (cantidadAsusEmpresa))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )
        