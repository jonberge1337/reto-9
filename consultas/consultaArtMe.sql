/* limpiar la pantalla*/
cl scr 

accept med prompt "Indique la medida de los articulos a previsualizar:"

SELECT COD_ARTICULO, TIPO_ARTICULO, ARTICULOS.COD_UNIDAD_MEDIDA
FROM ARTICULOS, MEDIDAS
WHERE MEDIDAS.COD_UNIDAD_MEDIDA = ARTICULOS.COD_UNIDAD_MEDIDA
  AND DESCRIPCION_UNIDAD_MEDIDA = '&med';

start consultas.sql