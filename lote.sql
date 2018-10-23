USE Perfumerie;



-- Insertamos Materias Primas
-- TRUNCATE materiaprima;
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("AQUA", "Agua destilada", 60);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("AQUAM", "AQuamarine", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ALCH", "Alcohol etilico", 90);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ALCHIS", "Alcohol isopropilico", 150);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("OXIALU", "Oxido de aluminio", 120);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLROJO", "Tinte rojo n°1", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLROJ", "Tinte rojo n°2", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLAZU", "Tinte azul °3", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLAMA", "Tinte amarillo n°4", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLVIO", "Tinte violeta n°5", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLVER", "Tinte verde n°42", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLNAR", "Tinte naranja n°43", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLNEG", "Tinte negro n°26", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEFRU", "Esencia frutilla", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEVAI", "Esencia vainilla", 40);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESELAV", "Esencia Lavanda", 80);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEROS", "Esencia flor de Rosa", 80);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEALM", "Esencia almizce", 70);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEHEN", "Esencia Heno de Pravia", 50);


-- Insertamos Productos
-- TRUNCATE producto;
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("ASD", "Perfume 1", 200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("DSA", "Perfume 2", 200.80);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("DAS", "Esencia de Vainilla", 80.00);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("CUL", "Esencia de Frutilla", 90.00);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("MIA", "Perfume 3", 310.00);

-- Insertamos elementos en la tabla FormulaUnaria
-- TRUNCATE formulaunaria;
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("ASD", "DAS");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("DSA", "CUL");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("DAS", "CUL");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("CUL", "DAS");

-- Insertamos elementos en la tabla FormulaBinaria
-- TRUNCATE formulabinaria;
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("DSA", "LAT5");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MIA", "LAT4");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("DAS", "LAT2");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("CUL", "LAT1");

-- Insertamos tipos de IVA
-- TRUNCATE iva;
INSERT INTO iva (ID, Descripcion, Valor) VALUES (1, "Repercutido 10", 10);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (12, "Repercutido 21", 21);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (40, "Repercutido 4", 4);

-- Insertamos Clientes

-- TRUNCATE cliente;
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123388, "Personas Jurídicas", "Calle Falsa 123", 44438353, 1);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123389, "Garcia Armenteros", "Calle Falsa 1234", 44438354, 12);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (31710123389, "Grupo Modesto", "Calle Falsa 2234", 44438355, 40);

-- Insertamos Pedidos

-- TRUNCATE pedido;
INSERT INTO pedido (Descripcion, Fecha) VALUES ("perfumes", utc_date());
INSERT INTO pedido (Descripcion, Fecha) VALUES ("perfumes2", utc_date());
INSERT INTO pedido (Descripcion, Fecha) VALUES ("frutilla", utc_date());

-- Insertamos Items
                                                
-- TRUNCATE item;
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (300, 1, "ASD");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (350, 2, "DSA");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (180, 5, "CUL");

-- Insertamos Pedidos Realizados

-- TRUNCATE pedidorealizado;
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (1, 30710123388, 1);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (2, 30710123389, 2);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (3, 31710123389, 3);

-- Insertamos Órdenes de Fabricación

-- TRUNCATE ordenfabricacion;
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (666, '', utc_date());
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (777, utc_date(), utc_date());
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (888, utc_date(), utc_date());

-- Insertamos Órdenes Realizadas

-- TRUNCATE ordenrealizada;
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (1, 1, 666);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (2, 2, 777);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (3, 3, 888);
