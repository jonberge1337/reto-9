cl scr 

accept tab prompt "Introduzca el nombre de la tabla:"
accept col prompt "Introduzca el nombre de la columna:"
accept reg prompt "Introduzca el nombre del registro:"

UPDATE '&tab'
SET '&col' = '&reg';

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql