/* limpiar la pantalla*/
cl scr 

prompt "Proveedores que no tengan ninguna venta:"

SELECT *
FROM PROVEEDORES
WHERE COD_PROVEEDOR NOT IN (SELECT COD_PROVEEDOR
                            FROM CAB_FACTURA);