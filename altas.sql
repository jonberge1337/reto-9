prompt En que tabla quiere meter datos?
prompt 1: 1. Provincias
prompt 2: 2. Proveedores
prompt 3: 3. Catalogo

accept selection prompt "Escriba el numero de la tabla"

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'altas\altasProvincias.sql'
       when '2' then 'altas\altasProveedores.sql'
       when '3' then 'altas\altasCatalogo.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.
