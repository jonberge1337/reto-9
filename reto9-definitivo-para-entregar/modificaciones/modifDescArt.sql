cl scr 

accept cod prompt "Introduzca el codigo del articulo:"
accept tip prompt "Introduzca el tipo del articulo:"
accept dsc prompt "Introduza la nueva descripcion del articulo:"

UPDATE ARTICULOS
SET DESCRIPCION_ARTICULO = '&dsc'
WHERE COD_ARTICULO = '&cod'
  AND TIPO_ARTICULO = '&tip';

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql