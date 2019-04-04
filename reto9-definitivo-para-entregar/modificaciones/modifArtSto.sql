cl scr

UPDATE ARTICULOS
SET PRECIO_VENTA = PRECIO_VENTA * 0.95
WHERE STOCK > (SELECT AVG(STOCK)
               FROM ARTICULOS);

prompt "Articulos actualizados"
accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql