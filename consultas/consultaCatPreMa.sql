/* limpiar la pantalla*/
cl scr 

accept pre prompt "Indique sobre que precio quiere previsualizar los articulos:"

SELECT *
FROM CATALOGO
WHERE PRECIO > pre;