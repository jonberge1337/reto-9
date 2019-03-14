cl scr -- limpiar la pantalla

prompt En que tabla quiere meter datos?

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
       when '1' then 'altas\altasProvincias.sql'
       when '2' then 'altas\altasProveedores.sql'
       when '3' then 'altas\altasCatalogo.sql'
       when '4' then 'altas\altasArticulos.sql'
       when '5' then 'altas\altasClientes.sql'
       when '6' then 'altas\altasFormPagos.sql'
       when '7' then 'altas\altasDirecciones.sql'
       when '8' then 'altas\altasPaises.sql'
       when '9' then 'altas\altasCabPedido.sql'
       when '10' then 'altas\altasDetPedido.sql'
       when '11' then 'altas\altasCabAlbaran.sql'
       when '12' then 'altas\altasDetAlbaran.sql'
       when '13' then 'altas\altasCabFactura.sql'
       when '14' then 'altas\altasMedidas.sql'
       when '15' then 'altas\altasDescuentos.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script.
