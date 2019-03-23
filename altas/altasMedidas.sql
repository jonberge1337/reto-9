cl scr -- limpiar la pantalla

accept cod prompt "Escriba el codigo de la medida: "
accept descr prompt "Escriba la descripcion de la medida: "

INSERT INTO MEDIDAS VALUES(
    &cod, &descr
);