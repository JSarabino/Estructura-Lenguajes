(print "Digite su nombre:")
(setq nombre (read))

(print "Digite nota primer corte:")
(setq nota1 (read))
(print "Digite nota segundo corte:")
(setq nota2 (read))
(print "Digite nota tercer corte:")
(setq nota3 (read))

(setq defnota1 (* nota1 0.35))
(setq defnota2 (* nota2 0.35))
(setq defnota3 (* nota3 0.30))

(setq definitiva (+ defnota1 defnota2 defnota3))

(if (>= definitiva 2.96) (format t "~S gano la materia ~%" nombre) (format t "~S usted no gano la materia ~%" nombre))

(print "Primer corte: ") (print nota1)
(print "Segundo corte: ") (print nota2)
(print "Tercer corte: ") (print nota3)

(print "Definitiva corte: ") (print definitiva)