cl scr

accept num prompt "Introduzca el numero del albaran que quiera borrar: "

DELETE FROM DETALLE_ALBARAN
WHERE NUM_ALBARAN=num;

DELETE FROM CAB_ALBARAN
FROM NUM_ALBARAN=num;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql