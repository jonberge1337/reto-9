/* limpiar la pantalla*/
cl scr 

accept pai prompt "Cliente sin una direccion asignada"

SELECT *
FROM CLIENTES
WHERE NOT EXISTS (SELECT *
                  FROM DIRECCIONES
                  WHERE CLIENTES.COD_CLIENTE = DIRECCIONES.COD_CLIENTE);