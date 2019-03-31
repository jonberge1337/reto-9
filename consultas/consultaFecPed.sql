/* limpiar la pantalla*/
cl scr 

accept fec prompt "Inserte la fecha:"

SELECT *
FROM CAB_PEDIDO
WHERE FECHA_PEDIDO = TO_DATE('&fec', 'DD/MM/YYYY')