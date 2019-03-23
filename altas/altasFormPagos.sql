cl scr -- limpiar la pantalla

accept forma prompt "Escriba la forma de pago: "
accept descr prompt "Escriba descripcion de la forma de pago: "

INSERT INTO FORMA_PAGO VALUES(
    &forma, &descr
);