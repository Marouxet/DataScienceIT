use store_one;


## actualizacion de registros
-- actualizacion sin restriccion
	update produtos -- tabla a modificar
		set stock = 2000;-- valor  a modificar
    
-- actualizacion de registros espeficos
	update productos -- tabla a modificar
		set stock = 5000 -- valor de actualizacion
		where valoracion >= 4;
    
-- actualizacion multiple

	update productos
		set stock  = 8000,
			precio = 300
		where categoria = "alimento"
		and articulo like "%gas%";
        
        
-- actualización selectiva
	update productos
		set precio = 
			case
				when categoria like "%tecn%" then 65000
                when categoria like "%hogar%" then 35000
                when categoria like "%ali%" then 420
                else 120
			end
		where articulo not like "gaseosa";
	
    -- actualizaion dinamica
    
		update clientes -- tabla
			set email = lower(concat(nombre,'.',apellido,'@gmail.com')) -- Concatenamos, hacemos minuscula y lo cargamos en e campo mail
		where email is null; -- no cargar los campos donde hay data
        
    
    select * from productos;
    select * from clientes;
    select * from proveedores;
    
    update proveedores
		set email = upper(concat("info@",proveedor,".com"))
	where email is null;