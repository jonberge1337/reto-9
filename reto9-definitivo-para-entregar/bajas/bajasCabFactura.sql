cl scr

accept num prompt "Introduzca el numero de la factura a borrar: "

DELETE FROM CAB_ALBARAN
WHERE NUM_FACTURA=num;

DELETE FROM CAB_FACTURA
WHERE NUM_FACTURA=num;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql