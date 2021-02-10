/*  
Comentario 
Multilínea
*/

## Comentario mysql: solo funciona en mysql
-- Comentario SQL: funciona en cualquier motor SQL

/* creación de base de datos
drop database if exist [nombre]; -- eliminar
create database [nombre]; --  crear
use [nombre]; -- usar

/*

/* creacion de tabla */

create database store_one; --  crear

use store_one;
## TABLA CLIENTES
create table clientes(
	id_cliente int auto_increment,
	apellido varchar(50), 
	nombre varchar(50),
    tipo_doc enum('dni','dni ext.','ci','lc','le','pass') not null,
    num_doc int not null,
    fecha_nac date,
    tel varchar(20),
    email varchar(200),
    direccion varchar(200),
    primary key(id_cliente),
    unique key(tipo_doc, num_doc)
);

## TABLA PROVEEDORES
create table proveedores(
	id_proveedor int auto_increment,
    proveedor varchar(100),
    cuil char(13), -- nn-nnnnnnnn-n
    contacto varchar(50),
	tel varchar(20),
    direccion varchar(100),
    primary key(id_proveedor),
    unique key(cuil)
);

## TABLA PRODUCTOS

create table productos(
	id_producto int auto_increment,
    articulo varchar(20) not null,
    codigo varchar(20) not null, 
    marca varchar(50),
    categoria enum('tecno','hogar','higiene','alimento'),
    stock int not null,
    precio int not null,
    valoracion enum('1','2','3','4','5'),
    detalle varchar(200),
    id_proveedor int not null,
    primary key(id_producto),
    unique key(codigo, id_proveedor),
    foreign key (id_proveedor) references proveedores(id_proveedor) -- sintaxis :foreign key (var_local) references tabla_foranea(var_foraneo)
);

/* Modificar una tabla */
alter table clientes
	add sexo enum('m','f') after nombre, -- agregar un campo luego de otro campo
	drop tel, -- borrar un campo
	modify sexo enum ('m','f','o'), -- modificar un tipo de campo
	rename column sexo to genero; -- renombrar una columna 
    
 /* Agregamos mail a la tabla proveedores*/
 
 alter table proveedores
	add email varchar(100) after tel;
    
    
    
## Facturación (Tabla para vincular clientes -> compras)
	create table facturacion (
		id_factura int auto_increment,
        id_cliente int,
        tipo enum ("debe","haber"),
        tipo_pago enum(
			"efectivo",
            "debito",
            "credito",
            "virtual"
            ),
		monto int,
        impuesto decimal(5,4),
        fecha date default(current_date()),
        primary key(id_factura),
        foreign key(id_cliente) references clientes(id_cliente) 
    );
    
    
   ## facturacion detalle 
   create table facturacion_detalle (
	id_detalle int auto_increment,
    id_factura int,
    id_producto int,
    cantidad int,
    precio int,
    primary key (id_detalle),
    
   );
show tables;
describe clientes;
select * from clientes;
drop table productos;