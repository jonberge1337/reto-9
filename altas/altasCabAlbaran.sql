cl scr -- limpiar la pantalla

accept num prompt "Escriba el numero del albaran a insertar: "
accept fecha prompt "Escriba la fecha del albaran a insertar: "
accept bultos prompt "Escriba los bultos del albaran a insertar: "
accept factura prompt "Escriba el numero de factura del albaran a insertar: "

INSERT INTO CAB_ALBARAN VALUES(
    &num, TO_DATE(&fecha, 'DD/MM/YYYY'), &bultos, &factura
);