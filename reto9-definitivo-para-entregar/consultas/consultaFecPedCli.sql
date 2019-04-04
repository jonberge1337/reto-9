/* limpiar la pantalla*/
cl scr 

accept fec prompt "Visualizar los Clientes que hayan realizado un Pedido en X fecha:"

SELECT *
FROM CLIENTES
WHERE EXISTS (SELECT *
              FROM CAB_PEDIDO
              WHERE FECHA_PEDIDO = TO_DATE('&fec', 'DD/MM/YYYY')
                AND CAB_PEDIDO.COD_CLIENTE = CLIENTES.COD_CLIENTE);

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql