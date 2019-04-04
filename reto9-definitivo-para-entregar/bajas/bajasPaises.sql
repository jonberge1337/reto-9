cl scr

accept cod prompt "Introduzca el codigo del pais que desee borrar: "

DELETE FROM CLIENTES
WHERE PAIS=cod;

DELETE FROM PAISES
WHERE PAIS=cod;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql