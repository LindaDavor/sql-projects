CREATE DATABASE Sales;
USE Sales;


 CREATE TABLE customers (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, email 
TEXT);
 INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
 INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
 INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

 CREATE TABLE orders (id INTEGER PRIMARY KEY AUTO_INCREMENT,customer_id INTEGER,item 
TEXT,price REAL);
 INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
 INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
 INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

#QUERYING TABLES
SELECT * FROM customers;
SELECT * FROM orders;


#LEFT OUTER JOIN
#one row per each customer, with their name, email, and total amount of money they've spent on orders.
SELECT customers.name, customers.email,orders.price
FROM customers LEFT OUTER JOIN orders ON customers.id=orders.customer_id ORDER BY price DESC;

