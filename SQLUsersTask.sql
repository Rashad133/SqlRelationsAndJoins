CREATE DATABASE UsersTask

USE UsersTask

CREATE TABLE Users
(
Id INT PRIMARY KEY IDENTITY,
Username VARCHAR(50) NOT NULL,
[Password] VARCHAR(50) NOT NULL,
RoleId INT REFERENCES Roles(Id)
)

INSERT INTO Users(Username,[Password],RoleId) VALUES
('Rashad','rashad808',1),
('Alpay','alpay123',2),
('Ehmed','ehmed321',3)


CREATE TABLE Roles
(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL
)

INSERT INTO Roles VALUES
('Admin'),
('Moderator'),
('Suppport')

SELECT u.Username, r.NAME AS [RoleName]
FROM Users u
JOIN Roles r ON u.RoleId = r.Id