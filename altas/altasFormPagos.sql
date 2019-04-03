cl scr

accept forma prompt "Escriba la forma de pago: "
accept descr prompt "Escriba descripcion de la forma de pago: "

INSERT INTO FORMA_PAGO VALUES(
    &forma, &descr
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql