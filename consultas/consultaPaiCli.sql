/* limpiar la pantalla*/
cl scr 

prompt "Estos son los Paises sin Clientes asociados:"

SELECT *
FROM PAISES
WHERE PAIS NOT IN (SELECT PAIS
                   FROM CLIENTES);