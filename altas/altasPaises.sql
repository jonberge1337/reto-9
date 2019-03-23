cl scr -- limpiar la pantalla

accept pais prompt "Introduzca el pais: "
accept moneda prompt "Introduzca la moneda de dicho pais: "

INSERT INTO PAISES VALUES(
    &pais, &moneda
);