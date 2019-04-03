cl scr

accept num prompt "Escriba el numero del albaran a insertar: "
accept cod prompt "Escriba el codigo del articulo a insertar: "
accept tipo prompt "Escriba el tipo de articulo a insertar: "
accept precio prompt "Escriba el precio de dicho a articulo: "
accept cantidad prompt "Escriba el codigo de pago del pedido a insertar: "

INSERT INTO DETALLE_ALBARAN VALUES(
    &num, &cod, &tipo, &precio, &cantidad
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql