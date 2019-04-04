cl scr

accept cod prompt "Introduzca el codigo del cliente que quiera borrar: "

DELETE FROM CAB_PEDIDO
WHERE COD_CLIENTE=cod;

DELETE FROM DIRECCIONES
WHERE COD_CLIENTE=cod;

DELETE FROM CLIENTES
WHERE COD_CLIENTE=cod;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql