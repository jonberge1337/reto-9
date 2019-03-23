cl scr -- limpiar la pantalla

accept cod prompt "Escriba el codigo del articulo a insertar: "
accept tipo prompt "Escriba el tipo de articulo a insertar: "
accept num prompt "Escriba el numero del pedido a insertar: "
accept cantidad prompt "Escriba la cantidad del articulo a insertar: "
accept precio prompt "Escriba el precio unitario del articulo a insertar: "

INSERT INTO DETALLE_PEDIDO VALUES(
    &cod, &tipo, &num, &cantidad, &precio
);