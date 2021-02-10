/*CARGA DE DATOS CLIENTES*/

/*Carga completa: */
use store_one;
insert into clientes values ( -- Requiere todos los parámetros 
		0, -- id_cliente
		'Racedo', -- apellido
		'Abel', -- nombre
		1, -- tipo_doc (1: dni, 2:dni ext...etc)
		20048118, -- num_doc
		'1993-01-05', -- fecha_nacimiento yyyy-mm-dd
		'11-0303456', -- telefono
		"abel.racedo365@hotmail.com.ar", -- mail
		" Avenida siempreviva 55, Springfield" -- Direccion
); 

/*Carga selectiva*/
use store_one;
insert into clientes(apellido, nombre, fecha_nac, tipo_doc, num_doc)
	values('Arouxet', 'Mariano', '1990/12/01', 1, 35796226);
    
/* Carga  multiple */
use store_one;
insert into clientes(apellido, nombre, tipo_doc, num_doc)
	values
		("Gomez","Matías",1, 37258215),
		("Carrillo","Lucas",2 ,11358625 ),
        ("García","Carlos", 3, 20011758 ),
        ("Blaufuks","Alejandra", 5, 20011726),
        ("Gimenez","Susana", 1, 1254852 );
        
        
/*CARGA DE DATOS PROVEEDORES*/
use store_one;
insert into proveedores(proveedor,cuil)
	values
		("HP","30-71480937-3"),
        ("ASUS","20-34755132-6"),
        ("COMFORT","30-59275330-4"),
        ("MOTOROLA","30-71124798-6"),
        ("CANNON", "30-61697108-1"),
        ("COCA COLA","30-51757696-0"),
        ("SANSUNG","30-68412579-2"),
        ("MAROLIO","30-71130359-2");
        
/*CARGA DE DATOS PROVEEDORES*/
use store_one;
insert into productos(articulo,codigo,categoria,valoracion,id_proveedor, stock, precio)
	values
    ("aire acondicionado","0552823",2,3,7,500,4500),
	("gaseosa","5482",4,3,2,10,120),
    ("impresora","055234",1,5,1,500,4500),
	("notebook","000078",1,3,1,10,12500),
    ("colchon","058dda",3,1,5,500,7500),
	("somiere","9999d",3,2,5,10,4600),
    ("televisor","144d22",3,4,7,500,16000),
	("telefono celular","00002",1,5,4,10,24000),
    ("telefono celular","A558df",1,1,7,500,1400),
	("notebook","68ds32",1,3,2,10,12500);
    
select * from productos;



/* CONSULTA DE DATOS*/
	## EJEMPLO: traaer todo con ciertas condiciones
    
	select * from productos -- que campos queremos traer y de qué tabla
		where valoracion > 3 -- condicion
        order by articulo DESC -- ordenado por stock descendente (el orden por defecto es ascendente)
        limit 5 -- cantidad de resultados que queremos ver
        offset 1; -- no mostrar los primeros 5
        
	## EJEMPLO: productos con más de  3 estrellas
    
	select id_producto, articulo, codigo, categoria, valoracion 
		from productos
        where valoracion >= 3
        order by valoracion desc;
        
	## EJEMPLO: proveedores con letra "c"
    select * from proveedores
		where  proveedor like "c%"; -- %: es un comodin que indica cualquier cosa 
        
	## EJEMPLO: clientes con apellido que terminan con "z" y el nombre tenga como 2da letra la "o"
    select apellido, nombre, tipo_doc, num_doc from clientes
		where apellido like "%z" and nombre like "_a%"; -- _: es un comodin que indica un caracter