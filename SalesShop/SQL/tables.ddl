CREATE TABLE Category (
  ID          int IDENTITY NOT NULL, 
  Name        int NULL, 
  Description varchar(100) NULL, 
  PRIMARY KEY (ID));
CREATE TABLE Customer (
  ID      int IDENTITY NOT NULL, 
  Name    int NULL, 
  Email   varchar(20) NULL, 
  Phone   char(11) NULL, 
  Address varchar(100) NULL, 
  RoleID  int NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE [Order] (
  ID         int IDENTITY NOT NULL, 
  CreateDate date NULL, 
  status     int NULL, 
  ShipDate   date NULL, 
  CustomerID int NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE OrderDetails (
  OrderID   int NOT NULL, 
  ProductID int NOT NULL, 
  Amount    int NULL, 
  Price     float(10) NULL, 
  PRIMARY KEY (OrderID, 
  ProductID));
CREATE TABLE Product (
  ID          int IDENTITY NOT NULL, 
  Name        int NULL, 
  UrlImage    varchar(50) NULL, 
  Price       int NULL, 
  Description varchar(100) NULL, 
  CategoryID  int NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE Role (
  ID   int IDENTITY NOT NULL, 
  Role varchar(20) NULL, 
  PRIMARY KEY (ID));
CREATE TABLE [User] (
  UserName varchar(20) NULL, 
  PassWord varchar(20) NULL);

