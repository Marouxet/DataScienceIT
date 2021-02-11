/* Laboratorio 03 - UPDATE 
1- Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar campos como parte de la sentencias, es decir, de la forma
simplificada.
2- Actualizar el nombre del cliente 1 a José.
3- Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
4- Actualizar todos los comentarios NULL a ‘’.
5- Eliminar los clientes con apellido Perez.
6- Eliminar los clientes con CUIT Terminan en 0.
7- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
8- Aumentar un 15% los precios de los artículos con precio mayor a 50.
9- Bajar un 5% los precios de los artículos con precio mayor a 200.
10- Eliminar los artículos con stock menor a 0
*/

use laboratorio;
select * from clientes;

update clientes
	set nombre = "jose"
    where clienteID = 1;
    
    
update clientes
	set nombre = "Pablo",
		apellido = "Fuentes",
        cuit = "23-21053119-0"
	where clienteID = 3;
    
update clientes
	set comentarios = ""
    where comentarios is  null;
    
delete from clientes
	where apellido = "Perez";
    
delete from clientes
	where cuit like "%0";
    
select * from articulos; 

update articulos
	set precio = 1.2 * precio
    where precio <= 50;
    
update articulos
	set precio = 1.15 * precio
    where precio > 50;
    
update articulos
	set precio = 0.95 * precio
    where precio > 200;
    
delete from articulos where stock < 0;
    