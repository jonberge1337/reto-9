cl scr -- limpiar la pantalla

accept cod prompt "Escriba el codigo de cliente: "
accept empresa prompt "Escriba escriba el nombre de la empresa: "
accept gerente prompt "Escriba el nombre del gerente: "
accept apel1 prompt "Escriba el primer apellido: "
accept apel2 prompt "Escriba el segundo apellido: "
accept ciudad prompt "Escriba la ciudad: "
accept pais prompt "Escriba escribe el pais: "
accept pago prompt "Escriba la forma de pago que va a utilizar: "

INSERT INTO CLIENTES VALUES(
    &cod, &empresa, &gerente, &apel1, &apel2, &ciudad, &pais, &pago
);