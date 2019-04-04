cl scr 

UPDATE CLIENTES
SET COD_PAGO = 5
WHERE EXISTS (SELECT * 
            FROM CAB_PEDIDO
            WHERE CAB_PEDIDO.COD_CLIENTE = CLIENTES.COD_CLIENTE
            AND FECHA_PEDIDO > TO_DATE('01/01/2018', 'DD/MM/YYYY'));

prompt "Modificacion completada"

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql