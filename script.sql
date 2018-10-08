CREATE DATABASE Perfumerie;

USE Perfumerie;

create table Producto(
	Codigo varchar(8) NOT NULL UNIQUE,
    Nombre varchar(30) NOT NULL,
    Costo decimal(6, 2) NOT NULL,
    constraint PK_Producto_Codigo primary key (Codigo)
);

create table MateriaPrima(
	Codigo varchar(8) NOT NULL UNIQUE,
    Descripcion varchar(30) NOT NULL,
    CostoBase decimal(6, 2) NOT NULL,
    constraint PK_MateriaPrima_Codigo primary key (Codigo)
);

/*DROP TABLE Formula;*/

create table Formula( /**/
	CodigoProductoFinal varchar(8) NOT NULL UNIQUE,
    CodigoProductoBase varchar(8),
    CodigoMateriaPrima varchar(8),
    primary key (CodigoProductoFinal, CodigoProductoBase, CodigoMateriaPrima),
    constraint FK_Formula_CodigoProductoFinal foreign key (CodigoProductoFinal) references Producto (Codigo),
    constraint FK_Formula_CodigoProductoBase foreign key (CodigoProductoBase) references Producto (Codigo),
    constraint FK_Formula_CodigoMateriaPrima foreign key (CodigoMateriaPrima) references MateriaPrima (Codigo)
);

create table IVA(
	ID integer NOT NULL UNIQUE AUTO_INCREMENT,
    Descripcion varchar(30) NOT NULL,
    Valor integer NOT NULL,
    constraint PK_IVA_ID primary key (ID)
);

create table Cliente(
	CUIT integer(9) NOT NULL UNIQUE,
    Razon_Social varchar(15) NOT NULL,
    Domicilio varchar(30) NOT NULL,
    Telefono integer(8) NOT NULL,
    ID_IVA integer NOT NULL UNIQUE,
    constraint PK_Cliente_CUIT primary key (CUIT),
    constraint FK_Cliente_ID_IVA foreign key (ID_IVA) references IVA (ID)
);

create table Pedido(
	Numero_Pedido integer NOT NULL UNIQUE AUTO_INCREMENT,
    Descripcion varchar(30) NOT NULL,
    Fecha date NOT NULL,
    constraint PK_Pedido_NumeroPedido primary key (Numero_Pedido)
);

create table Item(
	ID_Item integer NOT NULL UNIQUE AUTO_INCREMENT,
    Precio_Unitario decimal(6, 2) NOT NULL,
    Cantidad integer NOT NULL,
    Codigo_Producto varchar(8) NOT NULL,
    constraint PK_Item_IDItem primary key (ID_Item),
    constraint FK_Item_CodProducto foreign key (Codigo_Producto) references Producto (Codigo)
);

create table Pedidos_Realizados(
	ID_Item integer NOT NULL UNIQUE PRIMARY KEY,
    CUIT_Cliente integer(9) NOT NULL UNIQUE,
    Numero_Pedido integer NOT NULL UNIQUE,
    constraint FK_Item_IDItemPedido foreign key (ID_Item) references Item (ID_Item),
    constraint FK_Cliente_CUITCliente foreign key (CUIT_Cliente) references Cliente (CUIT),
    constraint FK_Pedido_NPedido foreign key (Numero_Pedido) references Pedido (Numero_Pedido)
);

create table Orden_Fabricacion(
	Numero_Partida integer NOT NULL UNIQUE PRIMARY KEY,
    Fecha_Orden date NOT NULL,
    Fecha_Vencimiento date NOT NULL
);

create table Ordenes_Realizadas(
	Numero_Pedido integer NOT NULL UNIQUE,
    ID_Item integer NOT NULL UNIQUE,
    Numero_Partida integer NOT NULL UNIQUE,
    primary key (Numero_Pedido, ID_Item),
    constraint FK_Item_IDItemOrden foreign key (ID_Item) references Item (ID_Item),
    constraint FK_Pedido_NPedidoOrden foreign key (Numero_Pedido) references Pedido (Numero_Pedido),
    constraint FK_OrdenFabricacion_NumeroPartida foreign key (Numero_Partida) references Orden_Fabricacion (Numero_Partida)
);