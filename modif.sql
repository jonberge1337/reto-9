cl scr -- limpiar la pantalla

prompt En que tabla quiere modificar datos?

prompt 1: 1. Provincias
prompt 2: 2. Proveedores
prompt 3: 3. Catalogo
prompt 4: 4. Articulos
prompt 5: 5. Clientes
prompt 6: 6. Formas de Pago
prompt 7: 7. Direcciones
prompt 8: 8. Paises
prompt 9: 9. Cabecera Pedido
prompt 10: 10. Detalle Pedido
prompt 11: 11. Cabecera Albaran
prompt 12: 12. Detalle Albaran
prompt 13: 13. Cabecera Factura
prompt 14: 14. Medidas
prompt 15: 15. Descuentos


accept selection prompt "Escriba el numero de la tabla "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'modif\modifProvincias.sql'
       when '2' then 'modif\modifProveedores.sql'
       when '3' then 'modif\modifCatalogo.sql'
       when '4' then 'modif\modifArticulos.sql'
       when '5' then 'modif\modifClientes.sql'
       when '6' then 'modif\modifFormPagos.sql'
       when '7' then 'modif\modifDirecciones.sql'
       when '8' then 'modif\modifPaises.sql'
       when '9' then 'modif\modifCabPedido.sql'
       when '10' then 'modif\modifDetPedido.sql'
       when '11' then 'modif\modifCabAlbaran.sql'
       when '12' then 'modif\modifDetAlbaran.sql'
       when '13' then 'modif\modifCabFactura.sql'
       when '14' then 'modif\modifMedidas.sql'
       when '15' then 'modif\modifDescuentos.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script.