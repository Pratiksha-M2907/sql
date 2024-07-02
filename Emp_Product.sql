create DATABASE COMPANY;
CREATE TABLE employee (
  id INT,
  emp_name VARCHAR(50),
  emp_id INT,
  emp_dept VARCHAR(20),
  emp_sal bigint,
  emp_mng BOOLEAN,
  emp_mgr_name VARCHAR(50),
  mgr_id INT,
  emp_exp INT
);
CREATE TABLE Product (
  id INT,
  prd_name VARCHAR(100),
  prd_price bigint,
  manufactured_date date,
  expiry_date DATE,
  prd_brand VARCHAR(50),
  prd_quantity INT,
  rating int
);
INSERT INTO employee (id, emp_name, emp_id, emp_dept, emp_sal, emp_mng, emp_mgr_name, mgr_id, emp_exp) 
VALUES 
(1, 'Sushma M', 201, 'Sales', 50000, FALSE, NULL, NULL, 5),
(2, 'Shweta K', 202, 'Marketing', 60000, FALSE, NULL, NULL, 7),
(3, 'Akshata J', 203, 'IT', 70000, TRUE, 'Akshata J', 1, 10),
(4, 'Ashwin M', 204, 'HR', 40000, FALSE, NULL, NULL, 3),
(5, 'Chetan', 205, 'Finance', 80000, TRUE, 'Chetan', 2, 10),
(6, 'Charan D', 206, 'Sales', 55000, FALSE, NULL, NULL, 4),
(7, 'Dhanush', 207, 'Marketing', 65000, FALSE, NULL, NULL, 6),
(8, 'Dhiren', 208, 'IT', 75000, FALSE, NULL, NULL, 5),
(9, 'Dhanashri', 209, 'HR', 45000, FALSE, NULL, NULL, 2),
(10, 'Sneha', 210, 'Finance', 85000, TRUE,'Sneha', NULL, 8),
(11, 'Girija', 211, 'Sales', 50000, FALSE, NULL, NULL, 3),
(12, 'Gourav', 212, 'Marketing', 60000, FALSE, NULL, NULL, 4),
(13, 'Harish', 213, 'IT', 70000, FALSE, NULL, NULL, 6),
(14, 'Harshita', 214, 'HR', 40000, FALSE, NULL, NULL, 2),
(15, 'Harshit', 215, 'Finance', 80000, FALSE, NULL, NULL, 7),
(16, 'Kiran', 216, 'Sales', 55000, FALSE, NULL, NULL, 5),
(17, 'Kirti', 217, 'Marketing', 65000, FALSE, NULL, NULL, 6),
(18, 'Khushi', 218, 'IT', 75000, FALSE, NULL, NULL, 5),
(19, 'Siddhi', 219, 'HR', 45000, FALSE, NULL, NULL, 3),
(20, 'Tejaswini', 220, 'Finance', 85000, FALSE, NULL, NULL, 8);
select * from employee;
Use company;
INSERT INTO Product (id, prd_name, prd_price, manufactured_date, expiry_date, prd_brand, prd_quantity, rating) 
VALUES 
(1, 'Apple Watch', 2299, '2020-01-01', '2025-01-01', 'Apple', 100, 4),
(2, 'Samsung TV', 1799, '2019-06-01', '2024-06-01', 'Samsung', 50, 5),
(3, 'Nike Shoes', 899, '2020-03-01', '2023-03-01', 'Nike', 200, 4),
(4, 'Sony Headphones', 1149, '2019-09-01', '2024-09-01', 'Sony', 150, 4),
(5, 'Dell Laptop', 7599, '2020-02-01', '2025-02-01', 'Dell', 80, 4),
(6, 'Adidas Jacket', 1279, '2019-11-01', '2024-11-01', 'Adidas', 120, 4),
(7, 'Canon Camera', 2399, '2019-07-01', '2024-07-01', 'Canon', 60, 5),
(8, 'HP Printer', 33299, '2020-04-01', '2023-04-01', 'HP', 180, 4),
(9, 'Under Armour Socks', 19, '2019-12-01', '2024-12-01', 'Under Armour', 250, 4),
(10, 'LG Refrigerator', 36999, '2020-05-01', '2025-05-01', 'LG', 40, 5),
(11, 'Microsoft Xbox', 52299, '2019-08-01', '2024-08-01', 'Microsoft', 100, 4),
(12, 'Calvin Klein Jeans', 779, '2020-06-01', '2023-06-01', 'Calvin Klein', 150, 4),
(13, 'Bosch Drill', 349, '2019-10-01', '2024-10-01', 'Bosch', 200, 4),
(14, 'Ray-Ban Sunglasses', 1129, '2020-07-01', '2023-07-01', 'Ray-Ban', 120, 4),
(15, 'Philips Shaver',12339, '2019-11-01', '2024-11-01', 'Philips', 180, 4),
(16, 'Vans Shoes',1269, '2020-08-01', '2023-08-01', 'Vans', 200, 4),
(17, 'Garmin Watch', 11299, '2019-09-01', '2024-09-01', 'Garmin', 100, 4),
(18, 'Panasonic TV', 36699, '2020-01-01', '2025-01-01', 'Panasonic', 50, 5),
(19, 'Reebok Jacket', 1259, '2019-12-01', '2024-12-01', 'Reebok', 120, 4),
(20, 'JBL Speakers', 74699, '2020-03-01', '2023-03-01', 'JBL', 150, 4);

SELECT * FROM PRODUCT;