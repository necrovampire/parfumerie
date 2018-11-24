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
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("Eau de Chocobo", '2016-07-07', 31804714718);
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("perfumes de mujer", '2017-07-08', 30710123389);
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("perfume de hombre", '2017-07-26', 31710123600);
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("niños", '2018-07-27', 30710123389);
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("Eau de Chocobo", '2018-09-12', 31804714718);
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("Todos los productos", '2018-10-02', 01234567890);
INSERT INTO pedido (Descripcion, Fecha, cliente) VALUES ("Todos los productos 2", '2018-10-02', 01234567890);

-- Insertamos Items
                                                
-- TRUNCATE item;
-- 1
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "EAUCHOCB", 1);

-- 2
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 10, "ACQUAPAR", 2);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 20, "COLSHAL", 2);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 8, "THOM", 2);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 12, "HENOPRAV", 2);

-- 3
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (2500, 8, "THOM", 3);

-- 4
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 80, "PERNIN1", 4);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 75, "PERNIN2", 4);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 30, "PERNINA1", 4);

-- 5
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 430, "EAUCHOCB", 5);

-- 6
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "MARINE", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "HENOPRAV", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "PERNIN1", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "PERNINA1", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "PERNIN2", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "EAUCHOCB", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "COLSHAL", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "ACQUAPAR", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "THOM", 6);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "ALLINONE", 6);

-- 7
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "MARINE", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "HENOPRAV", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "PERNIN1", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "PERNINA1", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "PERNIN2", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "EAUCHOCB", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "COLSHAL", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "ACQUAPAR", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "THOM", 7);
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto, Pedido) VALUES (1500, 200, "ALLINONE", 7);

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
-- 7
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (403, '2018-11-04', '2018-12-04');


-- Insertamos Órdenes Realizadas

-- TRUNCATE Fabricacion;
-- 1
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (1, 171);
-- 2
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (2, 272);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (3, 272);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (4, 272);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (5, 272);
-- 3
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (6, 273);
-- 4
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (7, 273);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (8, 273);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (9, 273);
-- 5
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (10, 371);
-- 6
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (11, 401);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (12, 401);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (13, 401);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (14, 401);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (15, 401);

INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (16, 402);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (17, 402);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (18, 402);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (19, 402);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (20, 402);

-- 7
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (21, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (22, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (23, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (24, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (25, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (26, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (27, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (28, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (29, 403);
INSERT INTO Fabricacion (IDItem, NumeroPartida) VALUES (30, 403);



-- LOTE PUNTO EXTRA
-- Insertamos Listas
-- 1
INSERT INTO Lista (fecha) VALUES ('2014-02-03');
-- 2
INSERT INTO Lista (fecha) VALUES ('2016-07-30');
-- 3
INSERT INTO Lista (fecha) VALUES ('2017-09-05');
-- 4
INSERT INTO Lista (fecha) VALUES ('2018-05-07');

-- Insertamos Proveedores

INSERT INTO Proveedor (CUIT, razonsocial, domicilio, mail, Lista) VALUES (30456789198, "Juan Pan", "calle falsa 123", "jp@gmail.com",1);
INSERT INTO Proveedor (CUIT, razonsocial, domicilio, mail, Lista) VALUES (30256776190, "Juan bread", "calle falsa 321", "jb@gmail.com",2);
INSERT INTO Proveedor (CUIT, razonsocial, domicilio, mail, Lista) VALUES (30456789194, "Juan Ekmek", "yanlis sokak 564", "je@gmail.com",3);
INSERT INTO Proveedor (CUIT, razonsocial, domicilio, mail, Lista) VALUES (30456579195, "Juan Hleb", "lazna ulica 446", "jh@gmail.com",4);



-- Insertamos los preciosRT INTO Relacion (lista, materiaPrima, precio) VALUES (30456789198, 1, "AQUA", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES (1, "ALCH", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES (1, "ALCHIS", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "OXIALU", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLROJ", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLROJ2", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLAZU", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLAMA", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLVIO", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLVER", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLNAR", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLNEG", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLDOR", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLPLA", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 1, "COLDOR1", 50);

INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "ALCH", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "ALCHIS", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "OXIALU", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "AQUAM", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "ESEFRU", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "ESEVAI", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "ESELAV", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 2, "ESEROS", 50);

INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "ALCH", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "ALCHIS", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "OXIALU", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "ESEALM", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "ESEHEN", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "ESESHAL", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "ESEACQUA", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 3, "EMVPLA100", 50);

INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "ALCH", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "ALCHIS", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "OXIALU", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVPLA100", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVPLA200", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVPLA250", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVPLA500", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVPLARE100", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVPLACU101", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVIDR100", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVIDR200", 50);
INSERT INTO Listado (lista, materiaPrima, precio) VALUES ( 4, "EMVIDR500", 50);
