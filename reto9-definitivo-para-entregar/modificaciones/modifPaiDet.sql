cl scr

UPDATE DETALLE_PEDIDO
SET PRECIO = PRECIO * 1.2
WHERE EXISTS (SELECT *
            FROM CAB_PEDIDO, CLIENTE
            AND DETALLE_PEDIDO.NUM_PEDIDO = CAB_PEDIDO.NUM_PEDIDO
            AND CAB_PEDIDO.COD_CLIENTE = CLIENTES.COD_CLIENTE
            AND PAIS != 'ESPAÑA');

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql