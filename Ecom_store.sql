CREATE DATABASE ecom_store;
USE ecom_store;
CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NOT NULL
);
-- Insert 5 sample customers
INSERT INTO customers (Name, Email, Address) VALUES
    ('Aarav Sharma', 'aarav.sharma@outlook.com', 'Flat 402, Sai Heights, Near Iskcon Temple, Ahmedabad, Gujarat - 380015'),
    ('Priya Nair', 'priya.nair@zindamail.in', 'Plot No. 45, Jubilee Hills, Hyderabad, Telangana - 500033'),
    ('Ishaan Gupta', 'ishaan.g@gmail.com', 'H-12, Green Park Main, New Delhi - 110016'),
    ('Ananya Chatterjee', 'ananya.chat@rediffmail.com', 'Apartment 7B, Salt Lake Sector V, Kolkata, West Bengal - 700091'),
    ('Vikram Rathore', 'v.rathore@yahoo.in', 'Building No. 12, MG Road, Camp Area, Pune, Maharashtra - 411001');
-- Retrieve all customers
SELECT * FROM customers;

-- Update a customer's Address
UPDATE customers SET Address = 'Flat 402, Sai Heights, Near Iskcon Temple, Ahmedabad, Gujarat' WHERE Name = 'Aarav Sharma';
SELECT * FROM customers;

-- Delete a customer using customerid
DELETE FROM customers WHERE CustomerID = 5;
SELECT * FROM customers;

-- Display all customer whose name is Ananya Chatterjee
SELECT * FROM customers WHERE Name = 'Ananya Chatterjee';

-- Create orders table
CREATE TABLE orders(
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL
);

-- Insert 5 sample orders
INSERT INTO orders (CustomerID, OrderDate, TotalAmount) VALUES
    (1, '2026-04-10', 1500.50),
    (2, '2026-04-11', 2750.00),
    (3, '2026-04-12', 899.00),
    (1, '2026-04-13', 450.25),
    (5, '2026-04-14', 5200.00);

-- Retrieve all order with customerId 1
SELECT * FROM orders WHERE CustomerID = 1;

-- Update an order's total amount
UPDATE orders SET TotalAmount = 999 WHERE OrderID = 3;
SELECT * FROM orders;

-- Delete an order using orderid
DELETE FROM orders WHERE OrderID = 5;
SELECT * FROM orders;

-- Retrieve orders placed in last 30 days
SELECT * FROM orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

-- Retrieve Highest, Lowest and Average order amount
SELECT MAX(TotalAmount) AS HighestAmount, MIN(TotalAmount) AS LowestAmount, AVG(TotalAmount) AS AvgAmount FROM orders;

CREATE TABLE products(
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);
-- Insert 5 sample products
INSERT INTO products (ProductName, Price, Stock) VALUES
    ('Cotton Formal Shirt', 1299.00, 50),
    ('Slim Fit Denims', 2499.50, 30),
    ('Leather Office Bag', 4500.00, 15),
    ('Wireless Earbuds', 1999.00, 100),
    ('Mechanical Keyboard', 3200.00, 20);

-- Retrieve and sort products in descending order of price
SELECT * FROM products ORDER BY Price DESC;

-- Update the price of a product
UPDATE products SET Price = 3999.00 WHERE Price = 1999;

-- DELETE a product with stock = 0
DELETE FROM products WHERE Stock = 0;

-- Retrieve products where price is between 500 and 2000
SELECT * FROM products WHERE Price BETWEEN 500 AND 2000;

-- Retrieve most expensive and cheapest product
SELECT MAX(Price) AS Most_Expensive, MIN(Price) AS Cheapest FROM Products;


-- Order Details Table
CREATE TABLE order_details(
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Sub_Total DECIMAL (10, 2) NOT NULL
);

-- Insert 5 sample order details
INSERT INTO order_details (OrderID, ProductID, Quantity, Sub_Total) VALUES
    (1, 1, 2, 2598.00),
    (1, 4, 1, 1999.00),
    (2, 2, 1, 2499.50),
    (3, 3, 1, 4500.00),
    (4, 5, 1, 3200.00);

-- Retrieve all order details for specific order
SELECT * FROM order_details WHERE OrderID = 1;

-- Calculate the total revenue from all orders
SELECT SUM(Sub_Total) AS Total_Revenue FROM order_details;

-- Retrieve the top 3 most ordered products
SELECT ProductID, SUM(Quantity) AS Total_Quantity FROM order_details GROUP BY ProductID ORDER BY Total_Quantity DESC LIMIT 3;

-- Count how many time Mechanical Keyboard has been ordered
SELECT ProductID, COUNT(Quantity) AS Ordered_Frequency FROM order_details WHERE ProductID = (SELECT ProductID FROM products WHERE ProductName = 'Mechanical Keyboard') GROUP BY ProductID;