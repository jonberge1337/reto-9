/* limpiar la pantalla*/
cl scr 

accept cod prompt "Introduzca el Codigo del Cliente:"
accept dirv prompt "Introduzca la antigua Direccion del Cliente:"
accept dirn prompt "Introduzca la nueva Direccion del Cliente:"

UPDATE DIRECCIONES
SET DIRECCION = '&dirn'
WHERE COD_CLIENTE = '&cod'
  AND DIRECCION = '&dirv';