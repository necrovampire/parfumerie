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

INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA", "Envase plastico 100cc", 100);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA", "Envase plastico 200cc", 200);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA", "Envase plastico 250cc", 300);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA", "Envase plastico 500cc", 400);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA", "Envase plastico redondo 100cc", 100);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVPLA", "Envase plastico cuadrado 100cc", 100);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVIDR", "Envase vidrio 100cc", 150);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVIDR", "Envase vidrio 200cc", 300);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("EMVIDR", "Envase vidrio 500cc", 600);


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
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("ACQUAPAR", "COLPLAT");

-- Casos de materia prima y producto
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("EAUCHOCB", "COLDOR");

INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "AQUAM");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "ALCHIS");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "ALCH");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "COLVER");
INSERT INTO formulabinaria (CodigoProductoFinal, CodigoMateriaPrima) VALUES ("MARINE", "COLAZU");


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
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123388, "Personas Jurídicas", "Calle Falsa 123", 44438353, 1);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123389, "Garcia Armenteros", "Calle Falsa 1234", 44438354, 12);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (31710123389, "Grupo Modesto", "Calle Falsa 2234", 44438355, 40);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (31804714718, "El-cid", "Evergreen 487", 41746481, 100);


-- Insertamos Pedidos

-- TRUNCATE pedido;
INSERT INTO pedido (Descripcion, Fecha) VALUES ("Eau de Chocobo", '2016-07-07');                                              


-- Insertamos Items
                                                
-- TRUNCATE item;
INSERT INTO item (PrecioUnitario, Cantidad, CodigoProducto) VALUES (150, 200, "EAUCHOCB");


-- Insertamos Pedidos Realizados

-- TRUNCATE pedidorealizado;
INSERT INTO pedidorealizado (IDItem, CUITCliente, NumeroPedido) VALUES (1, 31804714718, 1);

-- Insertamos Órdenes de Fabricación

-- TRUNCATE ordenfabricacion;
INSERT INTO ordenfabricacion (NumeroPartida, FechaOrden, FechaVencimiento) VALUES (171, '2016-07-07', '2016-08-07');

-- Insertamos Órdenes Realizadas

-- TRUNCATE ordenrealizada;
INSERT INTO ordenrealizada (NumeroPedido, IDItem, NumeroPartida) VALUES (1, 1, 171);
