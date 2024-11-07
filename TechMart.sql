CREATE TABLE Products(

ProductID int identity (1,1) PRIMARY KEY,
ProudctName nvarchar(100) not null,
Category nvarchar(100) not null,
Price dec,
StockQuanitity int not null,
);

CREATE TABLE Customers(

CustomerID int identity (1,1) PRIMARY KEY,
FullName nvarchar(100) not null,
Email nvarchar(100) not null,
Phone int,
Adress nvarchar not null,
);

CREATE TABLE Orders(

OrderID int identity (1,1) PRIMARY KEY,
CustomerID int,
ProudctID int,
OrderDate Date not null,
Quantity int not null,
TotalPrice dec not null,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (ProudctID) REFERENCES Products(ProductID)
);