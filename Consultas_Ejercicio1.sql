use ejercicio1;

/*1*/ select cod_art from Articulo where (precio between 100 and 1000) and (descripcion like 'A%');

/*2*/ select * from Proveedor;

/*3*/ select descripcion from Material where cod_mat in(1,3,6,9,18);

/*4*/ select cod_pro,nombre from Proveedor where domicilio like '%suipacha%' and year(fecha_alta) = 2001;

/*5*/ select Proveedor.nombre,Ciudad.nombre from Proveedor inner join Ciudad on Ciudad.cod_ciu = Proveedor.cod_ciu;

/*6*/ select Proveedor.nombre from Proveedor inner join Ciudad on Ciudad.cod_ciu = Proveedor.cod_ciu where Ciudad.nombre like 'la plata';

/*7*/ select Contiene.nro from Contiene
inner join Almacen on Almacen.nro = Contiene.nro
inner join Articulo on Articulo.cod_art = Contiene.cod_art where Articulo.descripcion like 'A';

/*8*/ select Provisto_por.cod_mat, Material.descripcion from Provisto_por
inner join Material on Material.cod_mat = Provisto_por.cod_mat
inner join Proveedor on Proveedor.cod_pro = Provisto_por.cod_pro where Proveedor.cod_ciu = (select cod_ciu from Ciudad where nombre = 'Rosario');

/*9*/ select Proveedor.nombre from Provisto_por
inner join Proveedor on Proveedor.cod_pro = Provisto_por.cod_pro
inner join Material on Material.cod_mat = Provisto_por.cod_mat where Material.cod_mat = (select Compuesto_por.cod_mat from Compuesto_por
inner join Material on Material.cod_mat = Compuesto_por.cod_mat
inner join Articulo on Articulo.cod_art = Compuesto_por.cod_art where Articulo.cod_art = (select Contiene.cod_art from Contiene
inner join Articulo on Articulo.cod_art = Contiene.cod_art
inner join Almacen on Almacen.nro = Contiene.nro where Almacen.responsable = "Martin Gomez"));

/*10*/ update Almacen set nro = 20 where nro = 10;

/*11*/ delete from Proveedor where nombre = '%ABC%';

/*12*/ select count(nombre) from Proveedor where nombre = 'F%';

/*13*/ select Contiene.nro, avg(Articulo.precio) from Contiene
inner join Articulo on Articulo.cod_art = Contiene.cod_art
inner join Almacen on Almacen.nro = Contiene.nro group by Contiene.nro;

/*14*/ select Articulo.descripcion from Compuesto_por
inner join Articulo on Articulo.cod_art = Compuesto_por.cod_art
inner join Material on Material.cod_mat = Compuesto_por.cod_mat having count(Compuesto_por.cod_mat) >= 2;

/*15*/ select Proveedor.cod_pro, Proveedor.nombre, Proveedor.domicilio, count(Provisto_por.cod_mat) from Provisto_por
inner join Material on Material.cod_mat = Provisto_por.cod_mat
inner join Proveedor on Proveedor.cod_pro = Provisto_por.cod_pro group by Provisto_por.cod_pro;

/*16*/ 

/*17*/ select Proveedor.nombre from Proveedor
left join Provisto_por on Provisto_por.cod_pro = Proveedor.cod_pro where Provisto_por.cod_pro is null;
