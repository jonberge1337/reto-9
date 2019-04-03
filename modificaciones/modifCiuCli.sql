cl scr 

accept cod prompt "Introduzca el codigo del Cliente:"
accept ciudad prompt "Introduzca la nueva Ciudad del Cliente:"

UPDATE CLIENTES
SET CIUDAD = '&ciudad'
WHERE COD_CLIENTE = '&cod';

start modificaciones.sql