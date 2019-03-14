prompt ¿En que tabla quiere dar de baja datos?
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

accept selection prompt "Escriba el numero de la tabla"

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'bajas\bajasProvincias.sql'
       when '2' then 'bajas\bajasProveedores.sql'
       when '3' then 'bajas\bajasCatalogo.sql'
       when '4' then 'bajas\bajasArticulos.sql'
       when '5' then 'bajas\bajasClientes.sql'
       when '6' then 'bajas\bajasFormPagos.sql'
       when '7' then 'bajas\bajasDirecciones.sql'
       when '8' then 'bajas\bajasPaises.sql'
       when '9' then 'bajas\bajasCabPedido.sql'
       when '10' then 'bajas\bajasDetPedido.sql'
       when '11' then 'bajas\bajasCabAlabaran.sql'
       when '12' then 'bajas\bajasDetAlbaran.sql'
       when '13' then 'bajas\bajasCabFactura.sql'
       when '14' then 'bajas\bajasMedidas.sql'
       when '15' then 'bajas\bajasDescuentos.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script.