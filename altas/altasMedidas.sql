cl scr

accept cod prompt "Escriba el codigo de la medida: "
accept descr prompt "Escriba la descripcion de la medida: "

INSERT INTO MEDIDAS VALUES(
    &cod, &descr
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql