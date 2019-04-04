cl scr

accept cod prompt "Introduzca el codigo del proveedor que desee borrar: "

DELETE FROM CATALOGO
WHERE COD_PROVEEDOR=cod;

DELETE FROM CAB_FACTURA
WHERE COD_PROVEEDOR=cod;

DELETE FROM PROVEEDORES
WHERE COD_PROVEEDOR=cod;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql