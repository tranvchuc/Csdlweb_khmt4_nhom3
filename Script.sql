/*
Created		09/07/2018
Modified		09/13/2018
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/


Create table [Role]
(
	[RoleID] Integer Identity NOT NULL, UNIQUE ([RoleID]),
	[Name] Nvarchar(30) NOT NULL,
	[Index] Char(30) NOT NULL, UNIQUE ([Index]),
	[ParentId] Integer NULL,
Primary Key ([RoleID])
) 
go

Create table [Book]
(
	[BookID] Integer Identity NOT NULL, UNIQUE ([BookID]),
	[Name] Nvarchar(200) NOT NULL,
	[Price] Integer NOT NULL,
	[Discount] Integer NULL,
	[Author] Nvarchar(50) NULL,
	[Size] Char(1) NULL,
	[Weight] Float NULL,
	[PublicTime] Smalldatetime NULL,
	[CreatedAi] Datetime NULL,
	[Description] Nvarchar(4000) NULL,
	[Image] Nchar(200) NULL,
	[Amount] Integer NOT NULL,
	[publishingHouse] Nvarchar(100) NULL,
	[CateID] Integer NOT NULL,
Primary Key ([BookID])
) 
go

Create table [Cate]
(
	[CateID] Integer Identity NOT NULL, UNIQUE ([CateID]),
	[Name] Nvarchar(100) NOT NULL,
	[Index] Nchar(100) NOT NULL, UNIQUE ([Index]),
Primary Key ([CateID])
) 
go

Create table [User]
(
	[UserID] Char(1) Identity NOT NULL, UNIQUE ([UserID]),
	[Email] Char(1) Identity NOT NULL, UNIQUE ([Email]),
	[Password] Nvarchar(200) NOT NULL,
	[Phone] Char(1) NOT NULL,
	[FullName] Char(1) NOT NULL,
	[Adress] Char(1) NULL,
	[RoleID] Integer NOT NULL,
Primary Key ([UserID])
) 
go

Create table [Deal]
(
	[DealID] Integer Identity NOT NULL,
	[UserID] Char(1) NOT NULL,
	[FullName] Nvarchar(50) Default u NULL,
	[Email] Char(50) NULL,
	[Phone] Char(15) NULL,
	[Adreeds] Nvarchar(100) NULL,
	[City] Nvarchar(50) NULL,
	[Districk] Nvarchar(50) NULL,
	[Note] Nvarchar(500) NULL,
Primary Key ([DealID])
) 
go

Create table [Oder]
(
	[OrderID] Char(1) NOT NULL, UNIQUE ([OrderID]),
	[BookID] Integer NOT NULL,
	[DealID] Integer NOT NULL,
	[amount] Integer NOT NULL,
	[Price] Integer NOT NULL,
	[SumPrice] Integer NULL,
Primary Key ([OrderID],[BookID],[DealID])
) 
go


Alter table [User] add  foreign key([RoleID]) references [Role] ([RoleID])  on update no action on delete no action 
go
Alter table [Oder] add  foreign key([BookID]) references [Book] ([BookID])  on update no action on delete no action 
go
Alter table [Book] add  foreign key([CateID]) references [Cate] ([CateID])  on update no action on delete no action 
go
Alter table [Deal] add  foreign key([UserID]) references [User] ([UserID])  on update no action on delete no action 
go
Alter table [Oder] add  foreign key([DealID]) references [Deal] ([DealID])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


