cl scr

accept cod prompt "Escriba el codigo del cliente: "
accept direc prompt "Escriba la direccion: "

INSERT INTO DIRECCIONES VALUES(
    &cod, &direc
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql