/* limpiar la pantalla*/
cl scr 

prompt "Medidas sin asignar:"

SELECT *
FROM MEDIDAS
WHERE NOT EXISTS (SELECT *
                  FROM ARTICULOS
                  WHERE MEDIDAS.COD_UNIDAD_MEDIDA = ARTICULOS.COD_UNIDAD_MEDIDA);