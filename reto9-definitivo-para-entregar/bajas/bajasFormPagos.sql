cl scr

accept cod prompt "Introduzca el codigo de la forma de pago que desee borrar: "

DELETE FROM CAB_PEDIDO
WHERE COD_PAGO=cod;

DELETE FROM CLIENTES
WHERE COD_PAGO=cod;

DELETE FROM FORMA_PAGO
WHERE COD_PAGO=cod;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql