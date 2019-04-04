cl scr

accept tipo prompt "Introduzca el tipo de articulo que quiera borrar de los descuentos: "

DELETE FROM DESCUENTOS
WHERE TIPO_ARTICULO=tipo;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql