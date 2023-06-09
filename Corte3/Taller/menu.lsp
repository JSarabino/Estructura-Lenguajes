;EL -JTimana
(load "0crear.lsp")
(load "1adicionar.lsp")
(load "2consultar.lsp")
(load "3imprimir.lsp")

;Llamar a crear
(crear)

(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Registrar truno ")
	(print "   2.   Consultar todos los turnos ")
	(print "   3.   Imprimir tickets ")
	(print "   4.   Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (registrar_turno))
		(2 (consultar_turnos))
		(3 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 4) (print "fin programa")(return))
)