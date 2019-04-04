cl scr -- limpiar la pantalla

prompt Que modificaciones desea realizar?

prompt 1: 1. Cambiar la descripcion de un articulo
prompt 2: 2. Modificar la Ciudad de X Cliente
prompt 3: 3. Cambiar la Direccion de X Cliente
prompt 4: 4. Modificar el Precio de los Articulos menos vendidos
prompt 5: 5. Reponer Stock
prompt 6: 6. Cambio de Valor General
prompt 7: 7. Actualizar a 3 meses de vencimiento los codigos de pago con fecha mayores a 2018
prompt 8: 8. Añadir a la factura la fecha de albaran en caso de que esta sea mayor que la fecha de facturacion
prompt 9: 9. Subir Precio a Clientes de X Pais
prompt 10: 10. Reducir Precio de Venta
prompt 11: 11. Cabecera Albaran
prompt 12: 12. Detalle Albaran
prompt 13: 13. Cabecera Factura
prompt 14: 14. Medidas
prompt 15: 15. Descuentos

accept selection prompt "Escriba el numero de la opcion a ejecutar: "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'modificaciones\modifDescArt.sql'
       when '2' then 'modificaciones\modifCiuCli.sql'
       when '3' then 'modificaciones\modifDirCli.sql'
       when '4' then 'modificaciones\modifArtSto.sql'
       when '5' then 'modificaciones\modifStock.sql'
       when '6' then 'modificaciones\modifCamGen.sql'
       when '7' then 'modificaciones\modifPedCli.sql'
       when '8' then 'modificaciones\modifFacAlb.sql'
       when '9' then 'modificaciones\modifPaiDet.sql'
       when '10' then 'modificaciones\modifArtVen.sql'
       when '11' then 'modificaciones\modifCabAlbaran.sql'
       when '12' then 'modificaciones\modifDetAlbaran.sql'
       when '13' then 'modificaciones\modifCabFactura.sql'
       when '14' then 'modificaciones\modifMedidas.sql'
       when '15' then 'modificaciones\modifDescuentos.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script.