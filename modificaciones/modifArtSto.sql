cl scr

UPDATE ARTICULOS
SET PRECIO_VENTA = PRECIO_VENTA * 0.95
WHERE STOCK > (SELECT AVG(STOCK)
               FROM ARTICULOS);

prompt "Articulos actualizados"

start modificaciones.sql