use Perfumerie;

-- ¿Cuáles son los productos que no hemos fabricado en el último año?
select producto.nombre
from Producto
inner join Item 
on Item.CodigoProducto = Producto.Codigo
inner join Fabricacion 
on Fabricacion.IDItem = Item.IDItem
inner join OrdenFabricacion
on OrdenFabricacion.NumeroPartida = Fabricacion.NumeroPartida
where year(OrdenFabricacion.FechaOrden) != year(curdate());



-- ¿Qué materias primas son las más populares?
-- Las materias primas que estan en fabricacion son las populares porque estan uso
select materiaprima.*
from materiaprima
inner join FormulaBinaria
on FormulaBinaria.CodigoMateriaPrima = materiaprima.Codigo
inner join Producto
on Producto.Codigo = FormulaBinaria.CodigoProductoFinal
inner join item
on item.CodigoProducto = producto.Codigo
inner join Fabricacion 
on Fabricacion.IDItem = Item.IDItem
inner join OrdenFabricacion
on OrdenFabricacion.NumeroPartida = Fabricacion.NumeroPartida
group by materiaprima.Codigo;



-- Reporte de composición de productos
-- revisar
select pfinal.Codigo AS CodigoProductoFinal, pfinal.Nombre AS NombreProductoFinal,
pbase.Codigo AS CodigoProductoBase, pbase.Nombre AS NombreProductoBase,
mp.codigo as CodigoMateriaPrima, mp.descripcion as DescripcionMateriaPrima
FROM producto AS pfinal
LEFT JOIN formulaunaria AS fu
ON pfinal.Codigo = fu.CodigoProductoFinal
LEFT JOIN producto AS pbase
ON pbase.Codigo = fu.CodigoProductoBase
left join formulabinaria as fb
on fb.CodigoProductoFinal = pfinal.Codigo
left join materiaprima as mp
on mp.codigo = fb.CodigoMateriaPrima;



-- Lista de nuestros clientes más importantes en cuanto a productos pedidos.
-- cantidad items pedidos
select cliente.cuit, cliente.razonsocial, SUM(item.cantidad) AS CantidadProductosPedidos 
from cliente
inner join pedido
on pedido.cliente = cliente.cuit
inner join item
on item.Pedido = pedido.NumeroPedido
group by cliente.cuit
ORDER BY CantidadProductosPedidos desc
limit 2;



-- ¿Qué productos utilizan TODAS las materias primas?
-- 1 : AllInOne
SELECT  Producto.codigo, Producto.nombre
FROM producto 
inner JOIN formulabinaria
on formulabinaria.CodigoProductoFinal = producto.codigo
inner join materiaprima
on materiaprima.Codigo = FormulaBinaria.CodigoMateriaPrima group by formulabinaria.CodigoProductoFinal
having (select count(codigo) from materiaprima) = count(formulabinaria.CodigoProductoFinal);



-- ¿Qué ordenes de fabricación contemplan todos los productos?
-- El pedido 7 tiene todos los productos
select OrdenFabricacion.*
from OrdenFabricacion
inner join Fabricacion
on Fabricacion.NumeroPartida = OrdenFabricacion.NumeroPartida
inner join item
on Fabricacion.IDItem = item.IDItem
group by fabricacion.numeropartida
having count(fabricacion.iditem) = (select count(codigo) from producto);



-- Ranking de productos más vendidos en el último año.
-- mas vendidos > promedio
select Producto.codigo, Producto.nombre, ROUND( AVG(Item.cantidad)) AS PromedioVentaAnual
FROM Producto
INNER JOIN Item
ON Item.CodigoProducto = Producto.Codigo
INNER JOIN Pedido 
ON pedido.NumeroPedido = item.Pedido
WHERE year(pedido.Fecha) = year(curdate())
group by Producto.codigo
order by Item.cantidad desc
limit 2;




-- Obtener las órdenes de fabricación que cumplen con fabricar un pedido dado.
-- 3 y 4 comparten la misma orden
-- la orden 6 esta dividida en dos ordenes
select ordenfabricacion.*
from ordenfabricacion
inner join fabricacion
on ordenfabricacion.numeropartida = fabricacion.numeropartida
inner join item
on fabricacion.IDItem = Item.IDItem
where Item.pedido in(3, 4, 6) group by ordenfabricacion.numeropartida;



-- Dado un pedido, cuánto cuesta fabricarlo y su precio de venta final.
-- revisar, tiene que dar 3 items
select pedido.numeropedido, pedido.descripcion, sum(item.cantidad) as TotalProductos, sum(item.cantidad * Producto.costo) as CostoFabricacion,
round( sum( item.PrecioUnitario * item.cantidad * (1 + (iva.valor/100)) ) ,2) as PrecioVentaFinal
from pedido
inner join item
on item.Pedido = pedido.NumeroPedido
inner join producto
on item.CodigoProducto = producto.Codigo
inner join cliente
on cliente.cuit = pedido.cliente
inner join iva
on iva.id = cliente.ID_IVA
where pedido.numeropedido = 4;


-- EXTRA
-- ¿Cuáles son las materias primas provistas por un único proveedor?
-- Contestar este ítem como parte del puntaje extra.

select Listado.materiaprima, MateriaPrima.descripcion, Relacion.precio, Proveedor.razonsocial
from materiaPrima
inner join Listado
on Listado.materiaPrima = MateriaPrima.codigo
inner join Lista
on Lista.CodLista = Listado.Lista
inner join proveedor
on proveedor.lista = Lista.CodLista
group by Listado.materiaprima
having count(Listado.materiaprima) = 1;
