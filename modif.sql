prompt Indique la modificacion que desee realizar:
prompt 1. 
prompt 2. Bajas
prompt 3. Modificaciones
prompt 4. Consultas

accept selection prompt "Escoge una de las opciones "

set term off

column script new_value v_script

select case '&selection.'
when '1' then 'altas.sql'
when '2' then 'bajas.sql'
when '3' then 'modifi.sql'
when '4' then 'consultas.sql'
else 'menu'
end as script
from dual;

set term on

@&v_script
