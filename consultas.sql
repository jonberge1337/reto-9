cl scr -- limpiar la pantalla

prompt En el siguiente menu le proponemos algunas opciones sobre consultas, escoja la deseada:
prompt 1: 1. Mirar X tabla
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

accept selection prompt "Escriba el numero de la tabla: "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'consultas\consultaTabla.sql'
       when '2' then 'consultas\consultasProveedores.sql'
       when '3' then 'consultas\consultasCatalogo.sql'
       when '4' then 'consultas\consultasArticulos.sql'
       when '5' then 'consultas\consultasClientes.sql'
       when '6' then 'consultas\consultasFormPagos.sql'
       when '7' then 'consultas\consultasDirecciones.sql'
       when '8' then 'consultas\consultasPaises.sql'
       when '9' then 'consultas\consultasCabPedido.sql'
       when '10' then 'consultas\consultasDetPedido.sql'
       when '11' then 'consultas\consultasCabAlabaran.sql'
       when '12' then 'consultas\consultasDetAlbaran.sql'
       when '13' then 'consultas\consultasCabFactura.sql'
       when '14' then 'consultas\consultasMedidas.sql'
       when '15' then 'consultas\consultasDescuentos.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script.
