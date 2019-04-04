cl scr 

set lines 1000
set pages 1000

prompt Escoge una de las siguientes opciones:
prompt 1. Altas
prompt 2. Bajas
prompt 3. Modificaciones
prompt 4. Consultas
prompt 5. Salir

accept selection prompt "Escoge una de las opciones "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'altas.sql'
       when '2' then 'bajas.sql'
       when '3' then 'modifi.sql'
       when '4' then 'consultas.sql'
       when '5' then 'salir.sql'
       else 'sqlplus.sql'
       end as script
from dual;

set term on

@&v_script
