cl scr -- limpiar la pantalla

accept proveedor prompt "Escriba el codigo del proveedor a insertar: "
accept articulo prompt "Escriba el codigo del articulo a insertar: "
accept tipo prompt "Escriba el tipo articulo a insertar: "
accept precio prompt "Escriba el precio del dicho articulo: "
accept cantidad prompt "Escriba la cantidad minima: "

INSERT INTO CATALOGO VALUES(
    &proveedor, &articulo, &tipo, &precio, &cantidad
);