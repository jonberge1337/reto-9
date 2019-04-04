cl scr 

accept tabla prompt "Indique la tabla deseada: "

SELECT *
FROM  &tabla;

accept continuar prompt "Pulse una tecla para continuar"

start consultas.sql