/*
Created		09/07/2018
Modified		09/19/2018
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
	[Index] Nvarchar(100) NOT NULL, UNIQUE ([Index]),
Primary Key ([RoleID])
) 
go

Create table [Book]
(
	[BookID] Integer Identity NOT NULL, UNIQUE ([BookID]),
	[Name] Nvarchar(100) NOT NULL,
	[Price] Integer NOT NULL,
	[Discount] Integer NOT NULL,
	[Author] Nvarchar(30) NOT NULL,
	[Size] Integer NOT NULL,
	[Weight] Float NULL,
	[PublicTime] Smalldatetime NULL,
	[CreatedAt] Datetime NULL,
	[Description] Ntext NULL,
	[Image] Nvarchar(100) NULL,
	[Amount] Integer NOT NULL,
	[publishingHouse] Nvarchar(100) NOT NULL,
	[CategoryID] Integer NOT NULL,
Primary Key ([BookID])
) 
go

Create table [Category]
(
	[CategoryID] Integer Identity NOT NULL, UNIQUE ([CategoryID]),
	[Name] Nvarchar(100) NOT NULL,
	[Index] Nvarchar(100) NOT NULL, UNIQUE ([Index]),
Primary Key ([CategoryID])
) 
go

Create table [User]
(
	[UserID] Integer Identity NOT NULL, UNIQUE ([UserID]),
	[Email] Nvarchar(50) NOT NULL, UNIQUE ([Email]),
	[Password] Nvarchar(200) NOT NULL,
	[Phone] Nchar(15) NOT NULL,
	[FullName] Nvarchar(30) NOT NULL,
	[Adress] Nvarchar(50) NULL,
	[RoleID] Integer NOT NULL,
Primary Key ([UserID])
) 
go

Create table [Order]
(
	[OrderID] Integer Identity NOT NULL, UNIQUE ([OrderID]),
	[UserID] Integer NOT NULL,
	[FullName] Nvarchar(30) NOT NULL,
	[Email] Nvarchar(50) NOT NULL,
	[Phone] Nchar(15) NOT NULL,
	[Adreeds] Nvarchar(50) NOT NULL,
	[City] Nvarchar(20) NOT NULL,
	[Districk] Nvarchar(30) NOT NULL,
	[Note] Text NULL,
	[SumPrice] Integer NOT NULL,
Primary Key ([OrderID])
) 
go

Create table [OderDetail]
(
	[OrderDetail_ID] Integer NOT NULL, UNIQUE ([OrderDetail_ID]),
	[BookID] Integer NOT NULL,
	[OrderID] Integer NOT NULL,
	[amount] Integer NOT NULL,
	[Price] Integer NOT NULL,
Primary Key ([OrderDetail_ID],[BookID],[OrderID])
) 
go


Alter table [User] add  foreign key([RoleID]) references [Role] ([RoleID])  on update no action on delete no action 
go
Alter table [OderDetail] add  foreign key([BookID]) references [Book] ([BookID])  on update no action on delete no action 
go
Alter table [Book] add  foreign key([CategoryID]) references [Category] ([CategoryID])  on update no action on delete no action 
go
Alter table [Order] add  foreign key([UserID]) references [User] ([UserID])  on update no action on delete no action 
go
Alter table [OderDetail] add  foreign key([OrderID]) references [Order] ([OrderID])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


