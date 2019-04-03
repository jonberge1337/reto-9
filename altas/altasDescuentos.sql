cl scr

accept tipo prompt "Escriba el tipo de descuento a insertar: "
accept descu prompt "Escriba el descuento a insertar: "

INSERT INTO DESCUENTOS VALUES(
    &tipo, &descu
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql