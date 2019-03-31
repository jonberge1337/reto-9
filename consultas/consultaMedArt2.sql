/* limpiar la pantalla*/
cl scr 

prompt "La media de los precios de los articulos es:"

SELECT TO_CHAR(AVG(PRECIO_VENTA)) || 'Euros es la media'
FROM ARTICULOS;