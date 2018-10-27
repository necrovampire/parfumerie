use Perfumerie;

-- ¿Cuáles son los productos que no hemos fabricado en el último año?
select Producto.nombre
from Producto
inner join item
on item.CodigoProducto = Producto.Codigo
inner join OrdenRealizada
on OrdenRealizada.IDItem = item.IDItem
inner join OrdenFabricacion
on OrdenFabricacion.NumeroPartida = OrdenRealizada.NumeroPartida
where year(OrdenFabricacion.FechaOrden) != year(curdate());

-- ¿Qué materias primas son las más populares?
select materiaprima.*
from materiaprima
inner join FormulaBinaria
on FormulaBinaria.CodigoMateriaPrima = materiaprima.Codigo
inner join Producto
on Producto.Codigo = FormulaBinaria.CodigoProductoFinal
inner join item
on item.CodigoProducto = producto.Codigo
inner join OrdenRealizada
on OrdenRealizada.IDItem = item.IDItem
inner join OrdenFabricacion
on OrdenFabricacion.NumeroPartida = OrdenRealizada.NumeroPartida
group by materiaprima.Codigo;

-- Reporte de composición de productos

/*select Producto.codigo, Producto.nombre as nombre, materiaprima.Descripcion, Producto.nombre as pbase
from Producto
left join FormulaBinaria
on FormulaBinaria.CodigoProductoFinal = Producto.codigo
union all
select Producto.codigo, Producto.nombre as nombre, materiaprima.Descripcion, Producto.nombre as pbase
from Producto
left join FormulaBinaria
on FormulaBinaria.CodigoProductoFinal = Producto.codigo;*/

select Producto.codigo
 from producto
full outer join formulabinaria
on FormulaBinaria.CodigoProductoFinal = Producto.codigo;

-- Lista de nuestros clientes más importantes en cuanto a productos pedidos.
-- cantidad precio pedido, productos distintos?
-- lista segun producto

-- ¿Qué productos utilizan TODAS las materias primas?
-- ninguno

SELECT  Producto.codigo, Producto.nombre
FROM producto 
inner JOIN formulabinaria
on formulabinaria.CodigoProductoFinal = producto.codigo
inner join materiaprima
on materiaprima.Codigo = FormulaBinaria.CodigoMateriaPrima group by formulabinaria.CodigoProductoFinal
having (select count(codigo) from materiaprima) = count(formulabinaria.CodigoProductoFinal);

-- ¿Qué ordenes de fabricación contemplan todos los productos?
-- de una orden de fabricacion? 

-- Ranking de productos más vendidos en el último año.
-- mayor al promedio

-- Obtener las órdenes de fabricación que cumplen con fabricar un pedido dado.
-- 3 y 4 comparten la misma orden

-- Dado un pedido, cuánto cuesta fabricarlo y su precio de venta final.-
-- pedido.ID, pedido descripcion. count(producto), count precio item( precio unitario * cantidad)

-- ¿Cuáles son las materias primas provistas por un único proveedor? Contestar este ítem como parte del puntaje extra.
