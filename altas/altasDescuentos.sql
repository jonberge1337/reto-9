cl scr -- limpiar la pantalla

accept tipo prompt "Escriba el tipo de descuento a insertar: "
accept descu prompt "Escriba el descuento a insertar: "

INSERT INTO DESCUENTOS VALUES(
    &tipo, &descu
);