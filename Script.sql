/*
Created		9/7/2018
Modified		9/20/2018
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
	[Bookpublishers] Nvarchar(50) NOT NULL,
	[PublishingHouse] Nvarchar(100) NOT NULL,
	[Author] Nvarchar(30) NOT NULL,
	[Translator] Nvarchar(30) NULL,
	[Size] Nvarchar(20) NOT NULL,
	[PageNumber] Integer NULL,
	[Weight] Float NULL,
	[CoverType] Nvarchar(15) NULL,
	[PublicTime] Smalldatetime NULL,
	[Description] Ntext NULL,
	[Image] Nvarchar(100) NULL,
	[Amount] Integer NOT NULL,
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

Create table [Member]
(
	[MemberID] Integer Identity NOT NULL, UNIQUE ([MemberID]),
	[FullName] Nvarchar(30) NOT NULL,
	[Email] Nvarchar(50) NOT NULL, UNIQUE ([Email]),
	[Password] Nvarchar(200) NOT NULL,
	[Phone] Nchar(15) NOT NULL,
	[Adress] Nvarchar(50) NULL,
	[RoleID] Integer NOT NULL,
Primary Key ([MemberID])
) 
go

Create table [Order]
(
	[OrderID] Integer Identity NOT NULL, UNIQUE ([OrderID]),
	[MemberID] Integer NOT NULL,
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


Alter table [Member] add  foreign key([RoleID]) references [Role] ([RoleID])  on update no action on delete no action 
go
Alter table [OderDetail] add  foreign key([BookID]) references [Book] ([BookID])  on update no action on delete no action 
go
Alter table [Book] add  foreign key([CategoryID]) references [Category] ([CategoryID])  on update no action on delete no action 
go
Alter table [Order] add  foreign key([MemberID]) references [Member] ([MemberID])  on update no action on delete no action 
go
Alter table [OderDetail] add  foreign key([OrderID]) references [Order] ([OrderID])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


