cl scr

accept cod prompt "Introduzca el codigo del articulo que quiera borrar: "
accept tip prompt "Introduzca el tipo de articulo que corresponde al dicho articulo que quiere borrar: "

DELETE FROM CATALOGO
WHERE COD_ARTICULO=cod
    AND TIPO_ARTICULO=tip;

DELETE FROM DETALLE_ALBARAN
WHERE COD_ARTICULO=cod
    AND TIPO_ARTICULO=tip;

DELETE FROM DETALLE_PEDIDO
WHERE COD_ARTICULO=cod
    AND TIPO_ARTICULO=tip;

DELETE FROM ARTICULOS
WHERE COD_ARTICULO=cod
    AND TIPO_ARTICULO=tip;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql