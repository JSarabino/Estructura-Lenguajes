;EL -JTimana
(load "crearPersona")
(load "llenarPersona")
(load "imprimirPersona")

(defun mensaje()
  (print "buenos dias")
)

(crearEstructura)
(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Pedir datos ")
	(print "   2.   Imprimir datos ")
	(print "   3.   Ejercicio 3 ")
	(print "   4.    Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (llenarDatos))
		(2 (imprimirDatos))
		(3 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 4) (print "fin programa")(return))
  )