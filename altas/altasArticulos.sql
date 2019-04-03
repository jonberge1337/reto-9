cl scr

accept cod prompt "Escriba el codigo del articulo a insertar: "
accept tipo prompt "Escriba el tipo del articulo a insertar: "
accept descripcion prompt "Escriba la descripcion del articulo a insertar: "
accept pr_vent prompt "Escriba el precio de venta del articulo a insertar: "
accept stock prompt "Escriba el stock actual del articulo a insertar: "
accept stock_min prompt "Escriba el stock minimo del articulo a insertar: "
accept uni_med prompt "Escriba el codigo de la unidad de medida del articulo a insertar: "

INSERT INTO ARTICULOS VALUES(
    &cod, &tipo, &descripcion, &pr_vent, &stock, &stock_min, &uni_med
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql