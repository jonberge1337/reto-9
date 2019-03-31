/* limpiar la pantalla*/
cl scr 

accept tab prompt "Introduzca el nombre de la tabla:"
accept col prompt "Introduzca el nombre de la columna:"
accept reg prompt "Introduzca el nombre del registro:"

UPDATE '&tab'
SET '&col' = '&reg';