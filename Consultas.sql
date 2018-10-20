use Perfumerie;

select Producto.nombre
from item
inner join Producto
on Producto.Codigo = item.CodigoProducto
inner join OrdenRealizada
on OrdenRealizada.IDItem = item.IDItem
inner join OrdenFabricacion
on OrdenFabricacion.NumeroPartida = OrdenRealizada.NumeroPartida
where year(OrdenFabricacion.FechaOrden) != year(curdate());

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
on OrdenFabricacion.NumeroPartida = OrdenRealizada.NumeroPartida;