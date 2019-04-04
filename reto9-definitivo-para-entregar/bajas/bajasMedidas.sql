cl scr

accept cod prompt "Introduzca el codigo de la unidad de medida que desee borrar: "

DELETE FROM ARTICULOS
WHERE COD_UNIDAD_MEDIDA=cod;

DELETE FROM MEDIDAS
WHERE COD_UNIDAD_MEDIDA=cod;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql