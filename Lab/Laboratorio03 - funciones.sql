/*Laboratorio Funciones
1- Obtener el monto máximo de factura.
2- Obtener el monto mínimo de factura.
3- Obtener el monto mínimo de factura entre los años 2011 y 2020.
4- Obtener el monto promedio de factura.
5- Obtener la factura con el monto promedio del año 2011.
6- Obtener la cantidad de facturas.
7- Obtener la cantidad de facturas que tienen un monto entre $500 y $3.300.
8- Obtener la cantidad de facturas que hay en cada año.
9- Obtener la cantidad de facturas y el monto promedio en cada año.
10- Obtener la suma del monto y el promedio de las facturas según la letra.
*/

use laboratorio;

select max(monto) as monto_maximo from facturas;

select min(monto) as monto_minimo from facturas;

select min(monto) as monto_minimo_11_20  from facturas
	where fecha between "2011-01-01" and "2020-31-12";
    
select avg(monto) as monto_promedio from facturas;

select * from facturas
	where monto = (
		select avg(monto) from facturas
			where fecha like "2011%"
    );
    
select count(*) as cantidad from facturas;

select count(*) as cantidad_acotada from facturas
	where monto between 500 and 3000;
    
select year(fecha) as año, count(*) as cantidad from facturas
	group by year(fecha);
    
select year(fecha) as año, count(*) as cantidad, round(avg(monto),2) as monto_promedio from facturas
	group by year(fecha);
    
select letra, sum(monto) as suma_monto, avg(monto) as promedio from facturas
	group by (letra);
