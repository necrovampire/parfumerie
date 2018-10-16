use ejercicio1;

/*1*/ select cod_art from Articulo where (precio between 100 and 1000) and (descripcion like 'A%');

/*2*/ select * from Proveedor;

/*3*/ select descripcion from Material where cod_mat in(1,3,6,9,18);

/*4*/ select cod_pro,nombre from Proveedor where domicilio like "suipacha" and year(fecha_alta) = 2001;

/*5*/ select Proveedor.nombre,Ciudad.nombre from Proveedor inner join Ciudad on Ciudad.cod_ciu = Proveedor.cod_ciu;

/*6*/ select Proveedor.nombre from Proveedor inner join Ciudad on Ciudad.cod_ciu = Proveedor.cod_ciu where Ciudad.nombre like "la plata";

/*7*/ select Contiene.nro from Contiene
inner join Almacen on Almacen.nro = Contiene.nro
inner join Articulo on Articulo.cod_art = Contiene.cod_art where Articulo.descripcion like 'A';

