CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(100)
);

INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Alice', 'alice@gmail.com', 'Surat'),
(2, 'Bob', 'bob@gmail.com', 'Mumbai'),
(3, 'Charlie', 'charlie@gmail.com', 'Ahmedabad'),
(4, 'David', 'david@gmail.com', 'Vadodara'),
(5, 'Eve', 'eve@gmail.com', 'Rajkot');

SELECT * FROM Customers;


update Customers
set Address = 'Surat'
where CustomerID = 2;

delete from Customers
where CustomerID = 5;

select * from Customers;

select * from Customers
where Name = 'alice' 


create table Orders (
    OrderID int primary key ,
    CustomerID int,
    OrderDate date,
    TotalAmount decimal(10,2)
);

INSERT INTO Orders (order_ID, customer_ID, order_Date, total_Amont)
VALUES
(101, '1', '2026-09-01', '1500.00'),
(102, '2', '2026-09-05', '2500.00'),
(103, '3', '2026-09-10', '800.00'),
(104, '1', '2026-09-12', '3200.00'),
(105, '4', '2026-09-15', '1200.00');

describe Orders;

select * from  Orders;

select *
from Orders
where customer_ID = '1';


update Orders
set total_Amont = '3000.00'
where Order_ID = 102;

select * from Orders;

delete from Orders
where Order_ID = 105;

select * from Orders;

SELECT *
FROM Orders
WHERE order_Date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

select * from Orders 
where order_date >= date_sub(CURDATE(),INTERVAL  30 DAY);

select 
MAX(total_Amont) AS Highest_Order_Amount,
MIN(total_Amont) AS Lowest_Order_Amount,
AVG(total_Amont) AS Average_Order_Amount
from Orders;




CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);
insert into Products (ProductID, ProductName, Price, Stock)
values
(1, 'Laptop', 50000.00, 10),
(2, 'Mouse', 800.00, 25),
(3, 'Keyboard', 1500.00, 20),
(4, 'Headphones', 2000.00, 15),
(5, 'Monitor', 12000.00, 8);

select * from Products;



select * from Products
order by price desc


update Products
set Price = 900.00
where ProductID = 2;

select
    max(Price) as Maximum_Price,
    min(Price) as Minimum_Price
from Products;
select * from  Products;

create table OrderDetails (
    OrderDetailID int primary key,
    OrderID int,
    ProductID int,
    Quantity int
);


insert into OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
values
(1, 101, 1, 2),
(2, 102, 2, 3),
(3, 103, 3, 1),
(4, 104, 4, 2),
(5, 105, 5, 1);

select * from OrderDetails;

select * from OrderDetails
where OrderID = 101;

update OrderDetails
set Quantity = 3
where OrderDetailID = 1;

select * from OrderDetails;

delete from  OrderDetails
where OrderDetailID = 5;

select * from OrderDetails;


select *
from OrderDetails
where Quantity > 1;

describe OrderDetails;


alter table OrderDetails
add SubTotal decimal(10,2);

describe OrderDetails;


select sum(SubTotal) as Total_Revenue
from OrderDetails;

select *from OrderDetails
where ProductID = 1;

select *
from OrderDetails
where SubTotal > 1000;

select *
from OrderDetails
order by SubTotal desc;

select * from Customers;
select * from Orders;
select * from Products;
select * from OrderDetails;