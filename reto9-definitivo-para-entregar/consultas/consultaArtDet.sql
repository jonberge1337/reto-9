cl scr 

prompt "Articulos que no hayan sido vendidos:"

SELECT *
FROM ARTICULOS
WHERE COD_ARTICULO NOT IN(SELECT COD_ARTICULO
                          FROM DETALLE_ALBARAN)
  AND TIPO_ARTICULO NOT IN(SELECT TIPO_ARTICULO
                           FROM DETALLE_ALBARAN);

accept continuar prompt "Pulse una tecla para continuar"

consultas.sql