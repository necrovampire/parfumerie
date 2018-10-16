drop database ejercicio1;
create database ejercicio1;
use ejercicio1;

create table Almacen(nro int primary key,
nombre varchar(30) not null,
responsable varchar(30) not null
);

create table Articulo(cod_art int primary key,
descripcion varchar(30),
precio decimal(5,2)
);

create table Material(cod_mat int primary key,
descripcion varchar(30)
);

create table Ciudad(cod_ciu int primary key,
nombre varchar(30)
);

create table Proveedor(cod_pro int primary key,
nombre varchar(30),
domicilio varchar(30),
cod_ciu int,
fecha_alta date,
constraint FK_cod_ciu foreign key (cod_ciu) references Ciudad (cod_ciu)
);

create table Contiene(nro int,
cod_art int,
primary key(nro, cod_art),
constraint FK_nro_Cont foreign key (nro) references Almacen (nro),
constraint FK_cod_art_Cont foreign key (cod_art) references Articulo (cod_art)
);

create table Compuesto_por(cod_mat int,
cod_art int,
primary key(cod_mat, cod_art),
constraint FK_cod_mat_Comp foreign key (cod_mat) references Material (cod_mat),
constraint FK_cod_art_Comp foreign key (cod_art) references Articulo (cod_art)
);

create table Provisto_por(cod_mat int,
cod_pro int,
primary key(cod_mat, cod_pro),
constraint FK_cod_mat_Pro foreign key (cod_mat) references Material (cod_mat),
constraint FK_cod_pro_Pro foreign key (cod_pro) references Proveedor (cod_pro)
);