cl scr

accept num prompt "Introduzca el numero del pedido que quiera borrar: "

DELETE FROM DETALLE_PEDIDO
WHERE NUM_PEDIDO=num;

DELETE FROM CAB_PEDIDO
WHERE NUM_PEDIDO=num;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql