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

