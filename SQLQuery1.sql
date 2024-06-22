CREATE DATABASE MyAPP;
CREATE TABLE Users(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL,
	Surname NVARCHAR(50) NOT NULL,
	Email NVARCHAR(60) UNIQUE,
	RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP CHECK (RegistrationDate <= CURRENT_TIMESTAMP),
	ContactNumber VARCHAR(25) DEFAULT '+994000000000',
	AGE INT CHECK (AGE >= 18),
	Adress NVARCHAR(70) NOT NULL,
)
INSERT INTO Users(Name, Surname, Email, AGE, ContactNumber, Adress)
VALUES ('Quluzade', 'Cebrayil', 'QuluzadeCebrayil@gmail.com', 18, '+994502890371',  'Baku'); 
SELECT * FROM Users
CREATE TABLE Categories(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL,
	Slug NVARCHAR(50) UNIQUE,
	CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP CHECK (CreatedAt <= CURRENT_TIMESTAMP),
	IsActive BIT,
)
INSERT INTO Categories(Name, Slug, IsActive, CreatedAt)
VALUES ('Cebrayil', 'Quluzade_Cebrayil', 0, '2024-06-22');
SELECT [Name], IsActive FROM Categories
SELECT [Name], Surname, Email FROM Users
