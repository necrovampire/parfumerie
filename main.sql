DROP DATABASE IF EXISTS Perfumerie;

CREATE DATABASE Perfumerie;

USE Perfumerie;

/*DROP TABLE Producto;*/
create table Producto(
    Codigo varchar(12) NOT NULL,
    Nombre varchar(30) NOT NULL,
    Costo decimal(6, 2) NOT NULL,
    constraint PK_Producto_Codigo primary key (Codigo)
);

/*DROP TABLE MateriaPrima;*/
create table MateriaPrima(
    Codigo varchar(12) NOT NULL,
    Descripcion varchar(30) NOT NULL,
    CostoBase decimal(6, 2) NOT NULL,
    constraint PK_MateriaPrima_Codigo primary key (Codigo)
);

/*DROP TABLE FormulaUnaria;*/
create table FormulaUnaria( /**/
    CodigoProductoFinal varchar(12) NOT NULL,
    CodigoProductoBase varchar(12) NOT NULL,
    primary key (CodigoProductoFinal, CodigoProductoBase),
    constraint FK_Formula_CodigoProductoFinalU foreign key (CodigoProductoFinal) references Producto (Codigo),
    constraint FK_Formula_CodigoProductoBase foreign key (CodigoProductoBase) references Producto (Codigo)
);

/*DROP TABLE FormulaBinaria;*/
create table FormulaBinaria( /**/
    CodigoProductoFinal varchar(12) NOT NULL,
    CodigoMateriaPrima varchar(12) NOT NULL,
    primary key (CodigoProductoFinal, CodigoMateriaPrima),
    constraint FK_Formula_CodigoProductoFinalB foreign key (CodigoProductoFinal) references Producto (Codigo),
    constraint FK_Formula_CodigoMateriaPrima foreign key (CodigoMateriaPrima) references MateriaPrima (Codigo)
);

/*DROP TABLE IVA;*/
create table IVA(
    ID integer NOT NULL AUTO_INCREMENT,
    Descripcion varchar(30) NOT NULL,
    Valor integer NOT NULL,
    constraint PK_IVA_ID primary key (ID)
);

/*DROP TABLE Cliente;*/
create table Cliente(
    CUIT bigint NOT NULL,
    RazonSocial varchar(25) NOT NULL,
    Domicilio varchar(30) NOT NULL,
    Telefono integer(8) NOT NULL,
    ID_IVA integer NOT NULL,
    constraint PK_Cliente_CUIT primary key (CUIT),
    constraint FK_Cliente_ID_IVA foreign key (ID_IVA) references IVA (ID)
);

/*DROP TABLE Pedido;*/
create table Pedido(
    NumeroPedido integer NOT NULL AUTO_INCREMENT,
    Descripcion varchar(30) NOT NULL,
    Fecha date NOT NULL,
    cliente bigint NOT NULL,
    constraint PK_Pedido_NumeroPedido primary key (NumeroPedido)
    constraint FK_Pedido_CUITCliente foreign key (clente) reference Cliente (CUIT)
);

/*DROP TABLE Item;*/
create table Item(
    IDItem integer NOT NULL AUTO_INCREMENT,
    PrecioUnitario decimal(6, 2) NOT NULL,
    Cantidad integer NOT NULL,
    CodigoProducto varchar(12) NOT NULL,
    Pedido integer NOT NULL,
    constraint PK_Item_IDItem primary key (IDItem),
    constraint FK_Item_CodProducto foreign key (CodigoProducto) references Producto (Codigo),
    constraint FK_Item_Pedido foreign key (Pedido) references Pedido (NumeroPedido)

);

/*DROP TABLE OrdenFabricacion;*/
create table OrdenFabricacion(
    NumeroPartida integer NOT NULL,
    FechaOrden date NOT NULL,
    FechaVencimiento date NOT NULL,
    constraint PK_OrdenFabricacion_NumeroPartida primary key (NumeroPartida)
);

/*DROP TABLE OrdenRealizada;*/
create table Fabricacion(
    IDItem integer NOT NULL,
    NumeroPartida integer NOT NULL,
    primary key (NumeroPedido, IDItem, NumeroPartida),
    constraint FK_Item_IDItemOrden foreign key (IDItem) references Item (IDItem),
    constraint FK_OrdenFabricacion_NumeroPartida foreign key (NumeroPartida) references OrdenFabricacion (NumeroPartida)
);

/*DROP TABLE Proveedor;*/
create table Proveedor(
    CUIT decimal(8,0) NOT NULL,
    razonSocial varchar(30) NOT NULL,
    Domicilio varchar(30),
    mail varchar(30),
    primary key (CUIT)
);

/*DROP TABLE Lista;*/
create table Lista(
    CodMP integer NOT NULL,
    fecha date, 
    primary key (CodMP)
);
/*DROP TABLE Relacion;*/
create table Relacion(
    CUIT decimal(8,0) NOT NULL,
    lista integer NOT NULL,
    materiaPrima varchar(12) NOT NULL,
    precio decimal(6,2),
    primary key (materiaPrima, lista),
    constraint FK_Proveedor_CUIT foreign key (CUIT) references Proveedor (CUIT),
    constraint FK_Lista_CodMP foreign key (lista) references Lista (CodMP),
    constraint FK_MateriPrima_Codigo foreign key (materiaPrima) references MateriaPrima (codigo)
);

