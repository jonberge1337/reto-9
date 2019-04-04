cl scr

accept prove prompt "Introduzca el codigo del proveedor que quiera borrar: "
accept artic prompt "Introduzca el codigo del articulo que quiere borrar: "

DELETE FROM CATALOGO
WHERE COD_ARTICULO=prove
    AND TIPO_ARTICULO=artic;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql