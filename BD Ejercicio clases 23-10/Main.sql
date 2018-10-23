DROP DATABASE BDK;
CREATE DATABASE BDK;
USE BDK;

CREATE TABLE Cliente(

	DNI INT(8) NOT NULL,
    Nombre varchar(30) NOT NULL,
    constraint PK_Cliente_DNI primary key (DNI)
);

CREATE TABLE Articulo(

	ID INT NOT NULL,
    Nombre varchar(30) NOT NULL,
    constraint PK_ID_Articulo primary key (ID)
);

CREATE TABLE Pedido(

	Numero INT NOT NULL,
    Fecha DATE,
    DNI INT(8) NOT NULL,
    constraint PK_Numero primary key (Numero),
    constraint FK_DNI foreign key (DNI) references Cliente (DNI)
);

CREATE TABLE Contiene(

	Numero INT NOT NULL,
    ID INT NOT NULL,
    constraint FK_Numero foreign key (Numero) references Pedido (Numero),
    constraint FK_ID foreign key (ID) references Articulo (ID)
);

