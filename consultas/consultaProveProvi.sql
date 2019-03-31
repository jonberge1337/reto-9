/* limpiar la pantalla*/
cl scr 

prompt "Proveedores sin Provincia asociadas:"

SELECT *
FROM PROVEEDORES
WHERE COD_PROVINCIA NOT IN (SELECT COD_PROVINCIA
                            FROM PROVINCIAS);