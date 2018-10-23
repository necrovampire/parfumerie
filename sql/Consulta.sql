SELECT a.Nombre, p.Numero, cl.nombre
FROM Articulo as a INNER JOIN Contiene as c
ON a.ID=c.ID INNER JOIN
Pedido as p ON c.Numero=p.Numero 
INNER JOIN Cliente as cl
ON cl.DNI=p.DNI
Where p.Fecha='2018/10/20';