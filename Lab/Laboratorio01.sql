## Consignas del laboratorio de Alumni

-- 1 y 2 Crear base de datos laboratorio (hecho desde usuario root)
create database laboratorio;

-- 3) Crear tabla facturas
use laboratorio;
create table facturas (
	letra char,
    numero int, 
    clienteID int,
    articuloID int, 
    fecha date, 
    monto double, 
    primary key (letra,numero)
);

-- 4) Crear tabla articulos

create table articulos (
	articuloID int, 
    nombre varchar(50),
    precio double,
    stock int,
    primary key(articuloID)
);

-- 5) Crear tabla Clientes

create table clientes(
	clienteID int, 
    nombre varchar(50),
    apellido varchar(50),
    cuit char(16),
    direccion varchar(50),
    comentarios varchar(50),
    primary key (clienteID)
);

-- 6) Cargar 5 artículos en las tablas Facturas, Articulos y Clientes


use laboratorio;
insert into articulos( articuloID , nombre , precio , stock )
	values
    (001,"Mate Cabalaza",350,8),
    (002,"Termo Acero Stanley 750 mm", 2350, 5),
    (003,"Yerba Uruguaya sin palo 1kg",420, 25),
    (004,"Bombilla plata con filtro",1350,22),
    (005,"Mate tipo porongo",820,2);
    
insert into clientes (clienteID , nombre , apellido , cuit, direccion , comentarios)
	values
    (001,"Mariano","Arouxet","23-35796226-9","Tinogasta 4411 - Depto B"," Nada"),
    (002,"Einath","Apel","27-36049739-4","Amenabar 1837 - 2do 10","S/C"),
    (003,"Pepe","Argetino","04-159862483-6","Ciudad de buenos Aires",""),
    (004,"José","de San Martín","00-123456789-5","San Lorenzo","Amigo de Guemes"),
    (005,"Paul","McCarney","02-33333555-2","Algun lugar en UK","");
    
insert into facturas(letra ,   numero ,  clienteID ,    articuloID , fecha ,  monto )
	values
    ("A",00058,002,005,"2020-01-05",820),
    ("B",00059,003,004,"2020-01-10",1350),
    ("C",00102,002,003,"2020-01-11",420),
    ("C",0002,004,002,"2020-01-11",2350),
    ("A",00048,005,001,"2020-01-14",350);