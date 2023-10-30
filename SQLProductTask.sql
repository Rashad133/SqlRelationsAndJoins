CREATE DATABASE ProductTask

USE ProductTask

CREATE TABLE Products
(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL,
Price DECIMAL(10,2),
Cost DECIMAL(10,2),
CategoryId INT REFERENCES Categories(Id)
)

INSERT INTO Products([Name],Price,Cost,CategoryId) VALUES
('MSI Katana',2000,1500,1),
('PlayStation 5',1200,1000,2),
('Samsung S23',1600,1400,3),
('Apple watch 8',620,500,4)


CREATE TABLE Categories
(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL
)

INSERT INTO Categories (Name) VALUES
('Computer'),
('Console'),
('Phone'),
('Watch')


CREATE TABLE Colors
(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL
)

INSERT INTO Colors (Name) VALUES
('Black'),
('White'),
('Grey'),
('Green')

CREATE TABLE ProductColor
(
[ProductId] INT REFERENCES Products(Id),
[ColorId] INT REFERENCES Color(Id)
)

INSERT INTO ProductColor([ProductId],[ColorId]) VALUES
(1,1),
(1,2),
(2,2),
(3,1),
(3,3),
(4,4)



