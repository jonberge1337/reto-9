cl scr

UPDATE DETALLE_PEDIDO
SET PRECIO = (SELECT PRECIO * 1.20
                FROM DETALLE_PEDIDO, CAB_PEDIDO, CLIENTES
                WHERE DETALLE_PEDIDO.NUM_PEDIDO = CAB_PEDIDO.NUM_PEDIDO
                AND CAB_PEDIDO.COD_CLIENTE = CLIENTES.COD_CLIENTE
                AND PAIS != 'ESPAÑA');

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql