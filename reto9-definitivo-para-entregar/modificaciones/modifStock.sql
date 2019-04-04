cl scr 


UPDATE ARTICULOS
SET STOCK = STOCK + STOCK_MINIMO
WHERE STOCK < STOCK_MINIMO;

prompt "Stock respuesto"

accept continuar prompt "Pulse una tecla para continuar"

start modificaciones.sql