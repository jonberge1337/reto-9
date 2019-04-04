cl scr

accept cod prompt "Introduzca el codigo del cliente del que quiera borrar la direccion: "
accept direc prompt "Introduzca la direccion quiera borrar: "

DELETE FROM DIRECCIONES
WHERE COD_CLIENTE=cod
    AND DIRECCION=direc;

prompt "Baja completada"

accept continuar prompt "Pulse una tecla para continuar"

start bajas.sql