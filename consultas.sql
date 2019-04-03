cl scr

prompt En el siguiente menu le proponemos algunas opciones sobre consultas, escoja la deseada:
prompt 1: 1. Visualizar los datos de X tabla
prompt 2: 2. Clientes con X Forma de Pago
prompt 3: 3. Ver los Paises sin Clientes asociados
prompt 4: 4. Articulos Vendidos en X Fecha
prompt 5: 5. Ver datos sobre X Cliente
prompt 6: 6. Ver los Clientes de X Pais
prompt 7: 7. Ver los Proveedores sin Provincia
prompt 8: 8. Proveedores sin Ventas
prompt 9: 9. Articulos del Catalogo mayores de X precio
prompt 10: 10. Articulos del Catalogo menores de X precio
prompt 11: 11. Articulos del Catalgo entre 2 precios distintos
prompt 12: 12. Visualizar las Unidades de Medida sin asignar
prompt 13: 13. Visualizar los Articulos de X Medida
prompt 14: 14. Mostrar los Clientes de X Pais
prompt 15: 15. Visualizar los Albaranes sin Factura establecida
prompt 16: 16. Visualizar los Articulos comprados entre 2 fechas
prompt 17: 17. Ver la media de los precios de los Articulos
prompt 18: 18. Visualizar el primer pedido del mes actual
prompt 19: 19. Visualizar los Clientes que hayan realizado una compra en X fecha
prompt 20: 20. Mostrar los articulos que no se vendan
-- Cuántos articulos del mismo proveedor aparecen en el detalle de pedido
accept selection prompt "Escriba el numero de la opcion a ejecutar: "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'consultas\consultaTabla.sql'
       when '2' then 'consultas\consultaCliFor.sql'
       when '3' then 'consultas\consultaPaiCli.sql'
       when '4' then 'consultas\consultaArtiFec.sql'
       when '5' then 'consultas\consultaCliente.sql'
       when '6' then 'consultas\consultaCliDir.sql'
       when '7' then 'consultas\consultaProveProvi.sql'
       when '8' then 'consultas\consultaProFac.sql'
       when '9' then 'consultas\consultaCatPreMa.sql'
       when '10' then 'consultas\consultaCatPreMe.sql'
       when '11' then 'consultas\consultaCatPre2.sql'
       when '12' then 'consultas\consultaMedArt.sql'
       when '13' then 'consultas\consultaArtMe.sql'
       when '14' then 'consultas\consultaCliPai.sql'
       when '15' then 'consultas\consultaAlbFac.sql'
       when '16' then 'consultas\consultaArtiFec.sql'
       when '17' then 'consultas\consultaMedArt2.sql'
       when '18' then 'consultas\consultaPedFec.sql'
       when '19' then 'consultas\consultaFecPedCli.sql'
       when '20' then 'consultas\consultaArtDet.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script.
