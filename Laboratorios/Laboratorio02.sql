use laboratorio;

## 2 - Seleccion de diferentes tipos datos en artículos
    
 ## a- artículos con precio mayor a 100
 select articuloID, nombre, precio, stock from articulos
	where precio > 100;
 
 ## b- artículos con precio entre 20 y 40 (usar < y >)
 select articuloID, nombre, precio, stock from articulos
	where (precio > 20) and (precio < 40);
    
 ## c- artículos con precio entre 40 y 60 (usar BETWEEN)
 select articuloID, nombre, precio, stock from articulos
	where precio between 40 and 60;
    
 ## d- artículos con precio = 20 y stock mayor a 30
 select articuloID, nombre, precio, stock from articulos
	where (precio = 20) and (stock > 30);
 
 ## e- artículos con precio (12,20,30) no usar IN
 select articuloID, nombre, precio, stock from articulos
	where (precio = 12) or (precio = 20) or (precio =30);
    
 ## f- artículos con precio (12,20,30) usar el IN
 select articuloID, nombre, precio, stock from articulos
	where precio in (12,20,30);
    
 ## g- artículos cuyo precio no sea (12,20,30)
 select articuloID, nombre, precio, stock from articulos
	where precio not in (12,20,30);
    
## 3- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precios iguales deben quedar
## ordenados por nombre.

select * from articulos
order by precio desc, nombre asc;

## 4- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto
## con el iva del producto.

select articuloID, nombre, precio, stock, (precio * 1.21) as "precio con iva" from articulos;

## 5- Listar todos los artículos incluyendo una columna denominada “cantidad de cuotas” y otra “valor de cuota”, la
## es fija y es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de interes.
select  articuloID, nombre, precio, stock,  3 as "cantidad de cuotas", (precio*1.05/3) as "valor de cuota" 
from articulos;