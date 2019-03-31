/* limpiar la pantalla*/
cl scr 

accept fp prompt "Indique la forma de pago quiere ver en sus clientes: "

SELECT *
FROM CLIENTES, FORMA_PAGO
WHERE DESCRIPCION_FORMA_PAGO = '&fp'
  AND FORMA_PAGO.COD_PAGO = CLIENTES.COD_PAGO;