cl scr 

accept pai prompt "Indique de que pais desea ver sus clientes:"

SELECT *
FROM CLIENTES
WHERE PAIS = pai;

start consultas.sql