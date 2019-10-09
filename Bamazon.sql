CREATE DATABASE bamazonDB;
USE bamazonDB;
CREATE TABLE products(

item_id INTEGER(11) auto_increment,
product_name VARCHAR(11) NOT NULL,
department_name VARCHAR(11) NOT NULL,
price INTEGER (11) NOT NULL,
stock_quantity INTEGER(11) NOT NULL,
PRIMARY KEY item_id;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("shirt", "clothing", 10, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pants", "clothing", 9, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("candy", "food", 5, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("chocolate", "food", 6, 6);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ipad", "electronics", 400, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iphone", "electronics", 200, 4);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("gloves", "clothing", 10, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("spices", "food", 20, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("headphones", "electronics", 20, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("shoes", "clothing", 30, 10);

