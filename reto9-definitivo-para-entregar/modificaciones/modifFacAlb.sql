cl scr 

UPDATE CAB_FACTURA
SET FECHA_FACTURA = FECHA_ALBARAN
WHERE EXISTS (SELECT *                   
                FROM CAB_ALBARAN, CAB_FACTURA
                WHERE CAB_FACTURA.FECHA_FACTURA = CAB_ALBARAN.FECHA_FACTURA
                AND CAB_ALBARAN.FECHA_ALBARAN > CAB_FACTURA.FECHA_FACTURA);

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql