create database MyShop;
use MyShop;
CREATE TABLE Customers (
  CustomerID int NOT NULL UNIQUE,
  Name varchar(50) NOT NULL,
  Email varchar(100) NOT NULL UNIQUE check (Email like'%@gmail%'),
  Phone bigint NOT NULL UNIQUE,
  Address varchar(200) NOT NULL,
  City varchar(50) NOT NULL,
  Country varchar(50) NOT NULL DEFAULT 'India'
);
CREATE TABLE Orders (
  OrderID int NOT NULL UNIQUE,
  CustomerID int NOT NULL,
  OrderDate char(10) NOT NULL,
  Total decimal(10, 2) NOT NULL,
  Status varchar(20) NOT NULL CHECK (Status IN ('Pending', 'Shipped', 'Delivered')),
  PaymentMethod varchar(20) NOT NULL,
  Discount decimal(10, 2) NOT NULL DEFAULT 0
);
CREATE TABLE Products (
  ProductID int NOT NULL UNIQUE,
  Name varchar(50) NOT NULL,
  Description varchar(200) NOT NULL,
  Price decimal(10, 2) NOT NULL,
  Quantity int NOT NULL CHECK (Quantity > 0),
  Category varchar(20) NOT NULL,
  rating int check(rating<=5)
);
CREATE TABLE Emp (
  EmpID int NOT NULL UNIQUE,
  Name varchar(50) NOT NULL,
  Email varchar(100) NOT NULL UNIQUE,
  HireDate char(10) NOT NULL,
  JobTitle varchar(20) NOT NULL,
  Department varchar(20) NOT NULL,
  Salary decimal(10, 2) NOT NULL CHECK (Salary > 0)
);
CREATE TABLE Payments (
  PaymentID int NOT NULL UNIQUE,
  OrderID int NOT NULL,
  PaymentDate char(10) NOT NULL ,
  Amount decimal(10, 2) NOT NULL,
  PaymentMethod varchar(20) NOT NULL,
  CardNumber varchar(20) NOT NULL,
  PaymentStatus varchar(10) NOT NULL CHECK (PaymentStatus IN('Successful','Pending'))
);
/*Custumer insertion*/
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address, City) 
VALUES (1, 'Rahul Kumar', 'rahulkumar@gmail.com', 9876543210, '123 Sector 18', 'Chandigarh');/*default constraint*/

INSERT INTO Customers VALUES(2, 'Priya B', 'priyab@gmail.com', 9876543211, '456 Vasant Kunj', 'Ottawa', 'Canada');
INSERT INTO Customers VALUES(3, 'Rajesh Sunkad', 'rajeshs@yahoo.com', 9876543212, '789 Powai', 'Mumbai', 'India');/*gives error,check constraint violated*/
INSERT INTO Customers VALUES(3, 'Rajesh Sunkad', 'rajeshs@gmail.com', 9876543212, '789 Powai', 'Mumbai', 'India');
INSERT INTO Customers VALUES(4, 'Swati G', 'swatig@gmail.com', 9876543213, '901 Indiranagar', 'Bangalore', NULL);/*gives error not null constraint violation*/
INSERT INTO Customers VALUES(4, 'Swati G', 'swatig@gmail.com', 9876543213, '901 Indiranagar', 'Clanton','USA');
INSERT INTO Customers VALUES(5, 'Abhishek Patil', 'abhishekP@gmail.com', 9876543214, '234 Salt Lake', 'Kolkata', 'India');
INSERT INTO Customers VALUES(6, 'Divya Pujar', 'divyp@gmail.com', 9876543215, '567 Jubilee Hills', 'Hyderabad', 'India');
INSERT INTO Customers VALUES(7, 'Rohan Mehta', 'rohanmehta@gmail.com', 9876543216, '890 Lokhandwala', 'Mumbai', 'India');
INSERT INTO Customers VALUES(8, 'Sonali Shaha', 'sonias@gmail.com', 9876543217, '345 Sector 29', 'Greenville', 'USA');
INSERT INTO Customers VALUES(9, 'Amit Kumar', 'amitkumar@gmail.com', 9876543217, '678 Rajouri Garden', 'New Delhi', 'India');
INSERT INTO Customers VALUES(9, 'Neha Gupta', 'nehabgupta@gmail.com', 9876543219, '567 Bannerghatta', 'Bangalore', 'India');/* gives error unique constraint violation*/
INSERT INTO Customers VALUES(10, 'Neha Gupta', 'nehabgupta@gmail.com', 9876543219, '567 Bannerghatta', 'Bangalore', 'India');

SELECT * FROM Customers;
SELECT * FROM Customers where City='Mumbai' AND Country='India';
SELECT Name FROM Customers where name like '_a%h%';
SELECT count(*) as Total_Customers FROM Customers ;
SELECT count(City) as Mumbai_Customers FROM Customers where city='Mumbai' ;

/*Orders insertion*/
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Total, Status, PaymentMethod) 
VALUES (1, 1, '2022-01-01', 1000.00, 'Pending', 'Credit Card');/*Default Constraint*/
INSERT INTO Orders VALUES(2, 2, '2022-01-05', 500.00, 'Shipped', 'PayPal', 10.2);
INSERT INTO Orders VALUES(3, 3, '2022-01-10', 2000.00, 'Delivered', 'Cash', 5.2);
INSERT INTO Orders VALUES(4, 4, '2022-01-15', 800.00, 'Pending', 'Credit Card', 6.2);
INSERT INTO Orders VALUES(5, 5, '2022-01-20', 3000.00, 'Shipped', 'PayPal',6.2);
INSERT INTO Orders VALUES(6, 6, '2022-01-25', 1000.00, 'Delivered', 'Cash', 5.4);
INSERT INTO Orders VALUES(7, 7, '2022-02-01', 1500.00, 'Pending', 'Credit Card', 10.0);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Total, Status, PaymentMethod) VALUES(8, 8, '2022-02-05', 2500.00, 'Shipped', 'PayPal');
INSERT INTO Orders VALUES(9, 9, '2022-02-10', 3500.00, 'Delivered', 'Cash', 6.6);
INSERT INTO Orders VALUES(10, 10, '2022-02-15', 4000.00, 'Pending', 'Credit Card',8.4);

SELECT * FROM Orders;
SELECT * FROM Orders where Total>500 AND PaymentMethod='Cash';
SELECT * FROM Orders where Status='Pending';
SELECT count(*) as Total_Orders FROM Orders ;
SELECT count(*) as DiscountedOrders FROM Orders where Discount>0 ;

/*Insterting into Products*/
INSERT INTO Products VALUES (1, 'Apple iPhone 13', 'Latest iPhone model with advanced features', 70999.99, 1, 'Smartphones', 5);
INSERT INTO Products VALUES (2, 'Samsung Galaxy S22', 'High-end Android smartphone with large display', 38999, 1, 'Smartphones', 5);
INSERT INTO Products VALUES (3, 'Sony PlayStation 5', 'Next-generation gaming console with advanced graphics', 46000.25, 1, 'Gaming Consoles', 5);
INSERT INTO Products VALUES (4, 'Canon EOS R5', 'Professional mirrorless camera with high-resolution sensor', 3999.99, 1, 'Cameras', 4);
INSERT INTO Products VALUES (5, 'Dell XPS 13', 'Thin and lightweight laptop with long battery life', 60000.00, 1, 'Laptops', 4);
INSERT INTO Products VALUES (6, 'Apple Watch Series 7', 'Smartwatch with advanced health monitoring features', 25000.99, 2, 'Smartwatches', 5);
INSERT INTO Products VALUES (7, 'Sony WH-1000XM4', 'Wireless noise-cancelling headphones with long battery life', 1800.99, 1, 'Headphones', 4);
INSERT INTO Products VALUES (8, 'Nintendo Switch OLED', 'Gaming console with high-resolution OLED display', 27500, 1, 'Gaming Consoles', 5);
INSERT INTO Products VALUES (9, 'GoPro Hero10', 'Action camera with 4K video recording and waterproof design', 22000, 1, 'Cameras', 4);
INSERT INTO Products VALUES (10, 'Amazon Echo Show 10', 'Smart display with Alexa voice assistant and motion tracking', 22000, 1, 'Smart Speakers', 5);

SELECT * FROM Products;
SELECT * FROM Products where category='Smartphones';
SELECT Name FROM Products where Quantity>1;
SELECT count(*) as Total_Products FROM Products ;
SELECT count(*)as BestSellers FROM Products where Rating=5 ;

/*Inserting into Employees*/
INSERT INTO Emp VALUES (1, 'Vikram Singh', 'vikramsingh@email.com', '2010-05-01', 'Sales Manager', 'Sales', 65000.00);
INSERT INTO Emp VALUES(2, 'Pooja Sharma', 'poojasharma@email.com', '2009-04-01', 'Marketing Executive', 'Marketing', 50000.00);
INSERT INTO Emp VALUES(3, 'Saurabh Kumar', 'saurabhkumar@email.com', '2008-03-01', 'Software Engineer', 'IT', 55000.00);
INSERT INTO Emp VALUES(4, 'Ruchi Gupta', 'ruchigupta@email.com', '2007-02-01', 'Financial Manager', 'Finance', 60000.00);
INSERT INTO Emp VALUES(5, 'Tarun Jain', 'tarunjain@email.com', '2006-01-01', 'Business Analyst', 'IT', 50000.00);
INSERT INTO Emp VALUES(6, 'Aisha Singh', 'aishasingh@email.com', '2005-12-01', 'HR Executive', 'HR', 45000.00);
INSERT INTO Emp VALUES(7, 'Kunal Mehta', 'kunalmehtha@email.com', '2005-11-01', 'Software Developer', 'IT', 52000.00);
INSERT INTO Emp VALUES(8, 'Sneha Sharma', 'snehasharma@email.com', '2004-10-01', 'Marketing Manager', 'Marketing', 65000.00);
INSERT INTO Emp VALUES(9, 'Rahul Jain', 'rahuljain@email.com', '2003-09-01', 'Financial Analyst', 'Finance', 55000.00);
INSERT INTO Emp VALUES(10, 'Nidhi Gupta', 'nidhigupta@email.com', '2002-08-01', 'Customer Service', 'Customer Service', 40000.00);

SELECT * FROM Emp;
SELECT * FROM Emp where Name like'_a%';
SELECT Name FROM Emp where  Department='IT';
SELECT count(*) as Total_Employee FROM Emp ;
SELECT count(*)as High_Paid FROM Emp where Salary>50000 ;

/*inserting into Payments*/
INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod, CardNumber, PaymentStatus) 
VALUES(1, 1, '2022-01-01', 100.00, 'Credit Card', '1234-5678-9012-3456', 'Successful');
INSERT INTO Payments VALUES(2, 2, '2022-01-05', 200.00, 'PayPal', '9876-5432-1098-7654', 'Successful');
INSERT INTO Payments VALUES(3, 3, '2022-01-10', 300.00, 'Credit Card', '5678-9012-3456-7890', 'Pending');
INSERT INTO Payments VALUES(4, 4, '2022-01-15', 400.00, 'PayPal', '1234-5678-9012-3456', 'Successful');
INSERT INTO Payments VALUES(5, 5, '2022-01-20', 500.00, 'Credit Card', '9012-3456-7890-1234', 'Pending');
INSERT INTO Payments VALUES(6, 6, '2022-01-25', 600.00, 'PayPal', '5678-9012-3456-7890', 'Successful');
INSERT INTO Payments VALUES(7, 7, '2022-02-01', 700.00, 'Credit Card', '1234-5678-9012-3456', 'Pending');
INSERT INTO Payments VALUES(8, 8, '2022-02-05', 800.00, 'PayPal', '9876-5432-1098-7654', 'Successful');
INSERT INTO Payments VALUES(9, 9, '2022-02-10', 900.00, 'Credit Card', '5678-9012-3456-7890', 'Pending');
INSERT INTO Payments VALUES(10, 10, '2022-02-15', 1000.00, 'PayPal', '1234-5678-9012-3456', 'Successful');

SELECT * FROM Payments;
SELECT * FROM Payments where Amount>250;
SELECT * FROM payments where  PaymentStatus='Pending';
SELECT count(PaymentStatus) as Total_Paid FROM payments where PaymentStatus='Successful' ;
SELECT *FROM Payments where PaymentMethod='Credit Card' ;


