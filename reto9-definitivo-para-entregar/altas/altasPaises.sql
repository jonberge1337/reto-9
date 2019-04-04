cl scr

accept pais prompt "Introduzca el pais: "
accept moneda prompt "Introduzca la moneda de dicho pais: "

INSERT INTO PAISES VALUES(
    &pais, &moneda
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql