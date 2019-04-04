cl scr

accept num prompt "Introduzca el numero de albaran que quiera borrar del detalle de albaran: "
accept cod prompt "Introduzca el codigo del articulo que quiera borrar del detalle de albaran: "
accept tip prompt "Introduzca el tipo del articulo que quiera borrar del detalle de albaran: "

DELETE FROM DETALLE_ALBARAN
WHERE NUM_ALBARAN=num
    AND COD_ARTICULO=cod
    AND TIPO_ARTICULO=tip;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql