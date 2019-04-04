cl scr

accept cod prompt "Escriba el codigo del proveedor a insertar: "
accept empresa prompt "Escriba el nombre de la empresa a insertar: "
accept direc prompt "Escriba la direccion del proveedor a insertar: "
accept pobl prompt "Escriba la fecha de pago del pedido a insertar: "
accept tfno prompt "Escriba el telefono del proveedor a insertar: "
accept provincia prompt "Escriba el codigo de provincia para proveedores a insertar: "

INSERT INTO PROVEEDORES VALUES(
    &cod, &empresa, &direc, &pobl, &tfno, &provincia
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql