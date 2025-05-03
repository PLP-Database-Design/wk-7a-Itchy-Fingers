CREATE DATABASE week7; -- creating a database to use in normalizing the tables.
USE week7; -- Choosing a database to use on the table,


-- Question 1 Achieving 1NF (First Normal Form) 
-- Normalizing ProductDetails table by creating three tables that the productDetails table get data from that is products, customers annd orders
-- and using a foreign keys in ProductDetails table to relate them,
CREATE TABLE products (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100)
);

CREATE TABLE customers (
id INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(100)
);

CREATE TABLE orders (
id INT PRIMARY KEY AUTO_INCREMENT,
orderDate VARCHAR(50)
);

CREATE TABLE productDetails (
id INT PRIMARY KEY AUTO_INCREMENT,
orderID INT,
customerID INT,
productID INT,
FOREIGN KEY (orderID) REFERENCES orders(id),
FOREIGN KEY (customerID) REFERENCES customers(id),
FOREIGN KEY (productID) REFERENCES products(id)
);


-- Question 2 Achieving 2NF (Second Normal Form)
-- by using the tables created above; products, customers and orders tables,
-- normalizng order details table using foreign keys to show the relationships.
CREATE TABLE orderDetails (
id INT PRIMARY KEY AUTO_INCREMENT,
orderID INT,
customerID INT,
productID INT,
quantity INT,
FOREIGN KEY (orderID) REFERENCES orders(id),
FOREIGN KEY (customerID) REFERENCES customers(id),
FOREIGN KEY (productID) REFERENCES products(id)
);