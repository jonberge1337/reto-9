cl scr 


UPDATE ARTICULOS
SET STOCK = STOCK + STOCK_MINIMO
WHERE STOCK < STOCK_MINIMO;

prompt "Stock respuesto"

start modificaciones.sql