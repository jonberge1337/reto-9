cl scr 

accept cli prompt "Indique el codigo de cliente que quiera inspeccionar: "

SELECT *
FROM CLIENTES
WHERE COD_CLIENTE = CLI;

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql