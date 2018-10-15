DROP DATABASE IF EXISTS Perfumerie;

CREATE DATABASE Perfumerie;

USE Perfumerie;

create table Producto(
	Codigo varchar(8) NOT NULL,
    Nombre varchar(30) NOT NULL,
    Costo decimal(6, 2) NOT NULL,
    constraint PK_Producto_Codigo primary key (Codigo)
);

create table MateriaPrima(
	Codigo varchar(8) NOT NULL,
    Descripcion varchar(30) NOT NULL,
    CostoBase decimal(6, 2) NOT NULL,
    constraint PK_MateriaPrima_Codigo primary key (Codigo)
);

/*DROP TABLE Formula;*/

create table FormulaUnaria( /**/
	CodigoProductoFinal varchar(8) NOT NULL,
    CodigoProductoBase varchar(8) NOT NULL,
    primary key (CodigoProductoFinal, CodigoProductoBase),
    constraint FK_Formula_CodigoProductoFinalU foreign key (CodigoProductoFinal) references Producto (Codigo),
    constraint FK_Formula_CodigoProductoBase foreign key (CodigoProductoBase) references Producto (Codigo)
);

create table FormulaBinaria( /**/
	CodigoProductoFinal varchar(8) NOT NULL,
    CodigoMateriaPrima varchar(8) NOT NULL,
    primary key (CodigoProductoFinal, CodigoMateriaPrima),
    constraint FK_Formula_CodigoProductoFinalB foreign key (CodigoProductoFinal) references Producto (Codigo),
    constraint FK_Formula_CodigoMateriaPrima foreign key (CodigoMateriaPrima) references MateriaPrima (Codigo)
);

create table IVA(
	ID integer NOT NULL AUTO_INCREMENT,
    Descripcion varchar(30) NOT NULL,
    Valor integer NOT NULL,
    constraint PK_IVA_ID primary key (ID)
);

create table Cliente(
	CUIT bigint NOT NULL,
    RazonSocial varchar(25) NOT NULL,
    Domicilio varchar(30) NOT NULL,
    Telefono integer(8) NOT NULL,
    ID_IVA integer NOT NULL,
    constraint PK_Cliente_CUIT primary key (CUIT),
    constraint FK_Cliente_ID_IVA foreign key (ID_IVA) references IVA (ID)
);

create table Pedido(
	NumeroPedido integer NOT NULL AUTO_INCREMENT,
    Descripcion varchar(30) NOT NULL,
    Fecha date NOT NULL,
    constraint PK_Pedido_NumeroPedido primary key (NumeroPedido)
);

create table Item(
	IDItem integer NOT NULL AUTO_INCREMENT,
    PrecioUnitario decimal(6, 2) NOT NULL,
    Cantidad integer NOT NULL,
    CodigoProducto varchar(8) NOT NULL,
    constraint PK_Item_IDItem primary key (IDItem),
    constraint FK_Item_CodProducto foreign key (CodigoProducto) references Producto (Codigo)
);

create table PedidoRealizado(
	IDItem integer NOT NULL,
    CUITCliente bigint NOT NULL,
    NumeroPedido integer NOT NULL,
	primary key (IDItem, CUITCliente),
    constraint FK_Item_IDItemPedido foreign key (IDItem) references Item (IDItem),
    constraint FK_Cliente_CUITCliente foreign key (CUITCliente) references Cliente (CUIT),
    constraint FK_Pedido_NPedido foreign key (NumeroPedido) references Pedido (NumeroPedido)
);

create table OrdenFabricacion(
	NumeroPartida integer NOT NULL,
    FechaOrden date NOT NULL,
    FechaVencimiento date NOT NULL,
	constraint PK_OrdenFabricacion_NumeroPartida primary key (NumeroPartida)
);

create table OrdenRealizada(
	NumeroPedido integer NOT NULL,
    IDItem integer NOT NULL,
    NumeroPartida integer NOT NULL,
    primary key (NumeroPedido, IDItem),
    constraint FK_Item_IDItemOrden foreign key (IDItem) references Item (IDItem),
    constraint FK_Pedido_NPedidoOrden foreign key (NumeroPedido) references Pedido (NumeroPedido),
    constraint FK_OrdenFabricacion_NumeroPartida foreign key (NumeroPartida) references OrdenFabricacion (NumeroPartida)
);
