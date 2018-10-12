USE Perfumerie;

-- Insertamos Productos

INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("ASD", "Perfume 1", 200.50);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("DSA", "Perfume 2", 200.80);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("DAS", "Esencia de Vainilla", 80.00);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("CUL", "Esencia de Frutilla", 90.00);
INSERT INTO producto (Codigo, Nombre, Costo) VALUES ("MIA", "Perfume 3", 310.00);

-- Insertamos Materias Primas

INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("LAT1", "Frutilla", 50);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("LAT2", "Vainilla", 40);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("LAT4", "Lavanda", 80);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("LAT5", "Flor de Rosa", 80);
INSERT INTO materiaprima (Codigo, Descripcion, CostoBase) VALUES ("LAT6", "Almizce", 70);

-- Insertamos elementos en la tabla Formula

INSERT INTO formula (CodigoProductoFinal, CodigoProductoBase, CodigoMateriaPrima) VALUES ("ASD", "DAS", "LAT6");
INSERT INTO formula (CodigoProductoFinal, CodigoProductoBase, CodigoMateriaPrima) VALUES ("DSA", "CUL", "LAT5");
INSERT INTO formula (CodigoProductoFinal, CodigoProductoBase, CodigoMateriaPrima) VALUES ("MIA", "DAS", "LAT4");
INSERT INTO formula (CodigoProductoFinal, CodigoProductoBase, CodigoMateriaPrima) VALUES ("DAS", "CUL", "LAT2");
INSERT INTO formula (CodigoProductoFinal, CodigoProductoBase, CodigoMateriaPrima) VALUES ("CUL", "DAS", "LAT1");

-- Insertamos tipos de IVA

INSERT INTO iva (ID, Descripcion, Valor) VALUES (1, "Repercutido 10", 10);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (12, "Repercutido 21", 21);
INSERT INTO iva (ID, Descripcion, Valor) VALUES (40, "Repercutido 4", 4);

-- Insertamos Clientes

INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123388, "Personas Jurídicas", "Calle Falsa 123", 44438353, 1);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (30710123389, "Garcia Armenteros", "Calle Falsa 1234", 44438354, 12);
INSERT INTO cliente (CUIT, RazonSocial, Domicilio, Telefono, ID_IVA) VALUES (31710123389, "Grupo Modesto", "Calle Falsa 2234", 44438355, 40);