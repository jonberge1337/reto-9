cl scr

accept num prompt "Escriba el numero del pedido a insertar: "
accept f_ped prompt "Escriba la fecha de pedido del pedido a insertar: "
accept f_env prompt "Escriba la fecha de envio del pedido a insertar: "
accept f_pag prompt "Escriba la fecha de pago del pedido a insertar: "
accept pago prompt "Escriba el codigo de pago del pedido a insertar: "
accept cliente prompt "Escriba el codigo de cliente del pedidod a insertar: "

INSERT INTO CAB_PEDIDO VALUES(
    &num, TO_DATE(&f_ped, 'DD/MM/YYYY'), TO_DATE(&f_env, 'DD/MM/YYYY'), TO_DATE(&f_pag, 'DD/MM/YYYY'), &pago, &cliente
);

prompt "Alta completada"

accept continuar prompt "Pulse una tecla para continuar"

start altas.sql