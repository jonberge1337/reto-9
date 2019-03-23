cl scr -- limpiar la pantalla

accept num prompt "Escriba el numero de factura: "
accept fecha prompt "Escriba fecha de emision de la factura: "
accept plazo prompt "Escriba fecha limite que tiene que pagar la factura el cliente: "
accept proveedor prompt "Escriba el codigo del proveedor: "

INSERT INTO CAB_FACTURA VALUES(
    &num, TO_DATE(&fecha, 'DD/MM/YYYY'), &plazo, &proveedor
);