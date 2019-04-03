cl scr 

accept cli prompt "Indique el codigo de cliente que quiera inspeccionar: "

SELECT *
FROM CLIENTES
WHERE COD_CLIENTE = CLI;

start consultas.sql