cl scr 

accept fecha prompt "Articulos comprados en la fecha que indiques a continuacion: "

SELECT *
FROM ARTICULOS, DETALLE_PEDIDO, CAB_PEDIDO
WHERE DETALLE_PEDIDO.NUM_PEDIDO = CAB_PEDIDO.NUM_PEDIDO
  AND DETALLE_PEDIDO.COD_ARTICULO = ARTICULOS.COD_ARTICULO
  AND DETALLE_PEDIDO.TIPO_ARTICULO = ARTICULOS.TIPO_ARTICULO
  AND CAB_PEDIDO.FECHA_PEDIDO = TO_DATE('fecha', 'DD/MM/YYYY');

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql