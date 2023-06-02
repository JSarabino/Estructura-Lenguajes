;Definir una lista con unos alimentos por defecto
(setq lista '(papa maiz arroz harina))

;decirle al usuario que ingrese el nombre de un producto
(print "Ingrese el nombre del producto:")
(setq producto (read))

;verificar si ese producto ingresado esta en la lista
;hacerlo a traves de una funcion
;si lo que retorna la funcion es 1 entonces se entra a validar
;sino me indicara que el producto no esta en la despensa.

