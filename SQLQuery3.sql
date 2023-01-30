create database Company
use Company
Create table Employees
(
	Id int,
	Name nvarchar(10),
	SurName nvarchar(10),
	Position nvarchar(10),
	Salary int
	)

Insert into Employees
values
(1,'gamida','khalilova','ceo',13500)

Insert into Employees
values
(2,'omar','khalilov','developer',7500),
(3,'nisa','qurbanli','meneger',4000)

--1.1
Select AVG(Salary) From Employees

--1.2
Select * from Employees where Salary> (Select AVG(Salary) from Employees)

--1.3
Select MIN(Salary) from Employees
Select MAX(Salary) from Employees


--Task 2
use master
Create database Market

use Market

Create table Product(
	Id int,
	Name nvarchar(100),
	Price int
)

Alter table Product
add Brand nvarchar(20)

Insert into Product
values
(1,'shampoo',12,'Elseve'),
(2,'hair cream',6,'Elseve'),
(3,'kinder chocolate',1,'kinder'),
(4,'tv',1020,'samsung'),
(5,'bisquite',3,'eti'),
(6,'albeni',1,'ulker'),
(7,'bodygel',22,'pantene'),
(8,'lipstick',8,'gr'),
(9,'liner',9,'nyx'),
(10,'mascara',68,'givenchy')


Select * from Product where Price<(Select AVG(Price) from Product)

Select * from Product where Price>10

Select Name+Brand [ProductInfo] from Product where Len(Brand)>5