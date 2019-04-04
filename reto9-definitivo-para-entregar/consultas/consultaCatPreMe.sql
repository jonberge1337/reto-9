cl scr 

accept pre prompt "Indique sobre que precio quiere previsualizar los articulos:"

SELECT *
FROM CATALOGO
WHERE PRECIO < &pre;

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql