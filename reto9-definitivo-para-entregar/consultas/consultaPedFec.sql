cl scr 

prompt "El primer pedido realizado del mes actual:"

SELECT *
FROM CAB_PEDIDO
WHERE FECHA_ENVIO IN (SELECT MIN(FECHA_ENVIO)
                      FROM CAB_PEDIDO
                      WHERE TO_CHAR(FECHA_ENVIO, 'MM/YYYY') = TO_CHAR(SYSDATE, 'MM/YYYY');

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql