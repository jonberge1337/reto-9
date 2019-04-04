cl scr 

prompt "Albaranes que todabia no estan facturadas:"

SELECT *
FROM CAB_ALBARAN
WHERE NUM_FACTURA IS NULL;

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql