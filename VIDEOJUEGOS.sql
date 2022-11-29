create database Videojuegos1UP

create table Articulos(
IdProduct int primary key identity (1,1) not null,
ProductName varchar (50) not null,
ProductPrice money not null,
Plataforma varchar(30) not null,
UnitsInStock smallint,
Ofert bit not null,
UnitsOnOrder smallint,
Discontinued  bit not null,

)

SELECT * FROM Articulos


INSERT INTO Articulos(ProductName, ProductPrice, Plataforma, UnitsInStock, Ofert, UnitsOnOrder, Discontinued)
VALUES ('Mario Kart 8 Deluxe', '$1200.00', 'Nintendo Switch', '10', '0', '2', '0');


DELETE FROM Articulos WHERE IdProduct='3'

create table Usuarios(
Idusuario int primary key identity (1,1) not null,
Nickname varchar (50) not null,
BirthDate datetime,
Region nvarchar(20),
Admistrator  bit not null,

)

SELECT * FROM Usuarios

INSERT INTO Usuarios(Nickname,BirthDate, Region, Admistrator)
VALUES ('Donpepe02', '1990-10-19', 'Monterrey', '1');



create table Ofertas (
IdProduct int primary key  not null,
ProductName varchar (50) not null,
Ofert money not null,
UnitsInStock smallint,
PriceNew money not null,
UnitsOnOrder smallint,
Discontinued  bit not null,

)

SELECT * FROM Ofertas

create table  Categorias (
IdProduct int primary key  not null,
ProductName varchar (50) not null,
Category varchar(15) not null,

)

SELECT * FROM Categorias

create table Preorden (
IdProduct int primary key  not null,
IdOrder int,
ProductName varchar (50) not null,
UnitsInStock smallint,
ShippedDate datetime,
Price money not null,
UnitsOnOrder smallint,
Discontinued  bit not null,

)
SELECT * FROM Preorden


create table Orders(
IdOrder int primary key identity (1,1) not null,
IdUsuario int,
OrderDate datetime,
RequieredDate datetime,
Shippeddate datetime ,
ShipName nvarchar(40),
ShipAddress nvarchar(60),
ShipCity nvarchar(15),
ShipRegion nvarchar(15),
ShipPostalCode nvarchar (10),
ShipCountry nvarchar(15),

)

SELECT * FROM Orders