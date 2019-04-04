cl scr

UPDATE ARTICULOS
SET PRECIO_VENTA = PRECIO_VENTA * 0.80
WHERE COD_ARTICULO IN (SELECT COD_ARTICULO
                        FROM DETALLE_PEDIDO)
AND TIPO_ARTICULO IN (SELECT TIPO_ARTICULO
                        FROM DETALLE_PEDIDO);

prompt "Articulos actualizados"
accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql