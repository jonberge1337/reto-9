cl scr -- limpiar la pantalla

accept cod prompt "Escriba el codigo del cliente: "
accept direc prompt "Escriba la direccion: "

INSERT INTO DIRECCIONES VALUES(
    &cod, &direc
);