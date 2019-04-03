cl scr

accept cod prompt "Escriba el codigo de la provincia: "
accept prefijo prompt "Escriba el prefijo de dicha provincia: "
accept descr prompt "Escriba la descripcion de la provincia: "

INSERT INTO PROVINCIAS VALUES(
    &cod, &prefijo, &descr
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql