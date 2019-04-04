cl scr

accept cod prompt "Introduzca el codigo de la provincia que desee borrar: "

DELETE FROM PROVEEDORES
WHERE COD_PROVINCIA=cod;

DELETE FROM PROVINCIAS
WHERE COD_PROVINCIA=cod;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql