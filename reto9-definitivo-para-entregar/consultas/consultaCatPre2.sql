cl scr 

accept pre prompt "Indique el valor menor en el intervalo de precios:"
accept pre2 prompt "Indique el valor mayor en el intervalo de precios:"

SELECT *
FROM CATALOGO
WHERE PRECIO BETWEEN &pre AND &pre2;

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql