cl scr 

prompt "Albaranes que todabia no estan facturadas:"

SELECT *
FROM CAB_ALBARAN
WHERE NUM_FACTURA IS NULL;

start consultas.sql