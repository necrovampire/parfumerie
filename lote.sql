USE Perfumerie;


-- Insertamos Materias Primas
-- TRUNCATE materiaprima;
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("AQUA", "Agua destilada", 60);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ALCH", "Alcohol etilico", 90);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ALCHIS", "Alcohol isopropilico", 150);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("OXIALU", "Oxido de aluminio", 120);

INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLROJ", "Tinte rojo n°1", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLROJ2", "Tinte rojo n°2", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLAZU", "Tinte azul °3", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLAMA", "Tinte amarillo n°4", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLVIO", "Tinte violeta n°5", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLVER", "Tinte verde n°42", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLNAR", "Tinte naranja n°43", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLNEG", "Tinte negro n°26", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLDOR", "Tinte dorado n°56", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLPLA", "Tinte Plateado n°57", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("COLDOR1", "Tinte dorado n°59", 50);

INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("AQUAM", "Esencia Aquamarine", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEFRU", "Esencia frutilla", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEVAI", "Esencia vainilla", 40);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESELAV", "Esencia Lavanda", 80);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEROS", "Esencia flor de Rosa", 80);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEALM", "Esencia almizce", 70);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEHEN", "Esencia Heno de Pravia", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESESHAL", "Esencia Shalimar", 70);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("ESEACQUA", "Esencia Acqua di Parma", 70);

INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA100", "Envase plastico 100cc", 100);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA200", "Envase plastico 200cc", 200);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA250", "Envase plastico 250cc", 300);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA500", "Envase plastico 500cc", 400);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLARE100", "Envase plastico redondo 100cc", 100);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLACU101", "Envase plastico cuadrado 100cc", 100);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVIDR100", "Envase vidrio 100cc", 150);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVIDR200", "Envase vidrio 200cc", 300);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVIDR500", "Envase vidrio 500cc", 600);


-- Insertamos Productos
-- TRUNCATE producto;
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("MARINE", "AquaMarine", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("HENOPRAV", "Heno de pravia", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("PERNIN1", "Perfume Niño 1", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("PERNINA1", "Perfume Niña 1", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("PERNIN2", "Perfume Niño 2", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("EAUCHOCB", "Eau de chocobo", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("COLSHAL", "Cologne Shalimar", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("ACQUAPAR", "Cologne Acqua di parma", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("THOM", "Cologne di trhav", 1200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("ALLINONE", "Todos los materiales", 1200.50);

-- Insertamos elementos en la tabla FormulaBinaria
-- TRUNCATE formulabinaria;
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("HENOPRAV", "ESEHEN");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("HENOPRAV", "COLAMA");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("HENOPRAV", "ALCH");

INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("PERNIN1", "ESEVAI");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("PERNIN1", "ALCH");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("PERNIN1", "COLROJ2");

INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("PERNINA1", "ESEFRU");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("PERNINA1", "ALCH");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("PERNINA1", "COLROJ");

INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("COLSHAL", "COLDOR");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("COLSHAL", "ALCHIS");

INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ACQUAPAR", "ALCHIS");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ACQUAPAR", "COLDOR1");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ACQUAPAR", "COLPLA");

-- Casos de materia prima y producto
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("EAUCHOCB", "COLDOR");

INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "AQUAM");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "ALCHIS");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "ALCH");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "COLVER");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "COLAZU");

-- tomy
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "AQUA");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ALCH");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ALCHIS");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "OXIALU");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLROJ");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLROJ2");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLAZU");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLAMA");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLVIO");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLVER");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLNAR");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLNEG");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLDOR");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLPLA");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "COLDOR1");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "AQUAM");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESEFRU");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESEVAI");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESELAV");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESEROS");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESEALM");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESEHEN");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESESHAL");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "ESEACQUA");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVPLA100");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVPLA200");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVPLA250");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVPLA500");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVPLARE100");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVPLACU101");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVIDR100");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVIDR200");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ALLINONE", "EMVIDR500");


-- Insertamos elementos en la tabla FormulaUnaria
-- TRUNCATE formulaunaria;
-- Casos de materia prima y producto
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("EAUCHOCB", "HENOPRAV");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("MARINE", "ACQUAPAR");

-- Casos de solo productos
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("PERNIN2", "PERNIN1");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("PERNIN2", "EAUCHOCB");

INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("THOM", "EAUCHOCB");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("THOM", "MARINE");
INSERT INTO formulaunaria (CodigoProductoFinal, CodigoProductoBase) VALUES ("THOM", "PERNIN2");


-- Insertamos tipos de IVA
-- TRUNCATE iva;
INSERT INTO iva (ID, Descripcion, Valor) VALUES (1, "Repercutido 10", 10);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (12, "Repercutido 21", 21);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (40, "Repercutido 4", 4);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (100, "Excento", 0);


-- Insertamos Clientes

-- TRUNCATE cliente;
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123450, "Personas Jurídicas", "Calle Falsa 123", 44438353, 1);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123389, "Garcia Armenteros", "Calle Falsa 1234", 44438354, 12);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (31710123600, "Thomas Tv", "Calle Falsa 2234", 44438355, 40);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (31804714718, "El-cid", "Evergreen 487", 41746481, 100);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (01234567890, "CompraTodo", "Evergreen 487", 44445858, 100);


-- Insertamos Pedidos

-- TRUNCATE pedido;
INSERT INTO pedido (Descripcion, Fecha) VALUES ("Eau de Chocobo", '2016-07-07');
INSERT INTO pedido (Descripcion, Fecha) VALUES ("perfumes de mujer", '2017-07-08');
INSERT INTO pedido (Descripcion, Fecha) VALUES ("perfume de hombre", '2017-07-26');
INSERT INTO pedido (Descripcion, Fecha) VALUES ("niños", '2018-07-27');
INSERT INTO pedido (Descripcion, Fecha) VALUES ("Eau de Chocobo", '2018-09-12');
INSERT INTO pedido (Descripcion, Fecha) VALUES ("Todos los productos", '2018-10-02');

-- Insertamos Items
                                                
-- TRUNCATE item;
-- 1
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "EAUCHOCB");

-- 2
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 10, "ACQUAPAR");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 20, "COLSHAL");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 8, "THOM");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 12, "HENOPRAV");

-- 3
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 8, "THOM");

-- 4
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 80, "PERNIN1");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 75, "PERNIN2");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 30, "PERNINA1");

-- 5
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 430, "EAUCHOCB");

-- 6
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "MARINE");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "HENOPRAV");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "PERNIN1");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "PERNINA1");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "PERNIN2");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "EAUCHOCB");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "COLSHAL");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "ACQUAPAR");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "THOM");
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "ALLINONE");


-- Insertamos Pedidos Realizados

-- TRUNCATE pedidorealizado;
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (1, 31804714718, 1);

-- 2
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (2, 31710123600, 2);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (3, 31710123600, 2);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (4, 31710123600, 2);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (5, 31710123600, 2);

-- 3
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (6, 30710123389, 3);

-- 4
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (7, 30710123450, 4);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (8, 30710123450, 4);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (9, 30710123450, 4);

-- 5
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (10, 31804714718, 5);

-- 6
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (11, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (12, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (13, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (14, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (15, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (16, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (17, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (18, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (19, 01234567890, 6);
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (20, 01234567890, 6);

-- Insertamos Órdenes de Fabricación

-- TRUNCATE ordenfabricacion;
-- 1
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (171, '2016-07-07', '2016-08-07');
-- 2
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (272, '2017-07-08', '2017-08-08');
-- 3 y 4
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (273, '2018-07-27', '2018-08-27');
-- 5
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (371, '2018-09-12', '2018-10-12');
-- 6
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (401, '2018-10-03', '2018-11-04');
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (402, '2018-10-04', '2018-11-04');

-- Insertamos Órdenes Realizadas

-- TRUNCATE ordenrealizada;
-- 1
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (1, 1, 171);
-- 2
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (2, 2, 272);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (2, 3, 272);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (2, 4, 272);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (2, 5, 272);
-- 3
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (3, 6, 273);
-- 4
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (4, 7, 273);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (4, 8, 273);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (4, 9, 273);
-- 5
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (5, 10, 371);
-- 6
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 11, 401);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 12, 401);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 13, 401);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 14, 401);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 15, 401);

INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 16, 402);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 17, 402);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 18, 402);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 19, 402);
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (6, 20, 402);
