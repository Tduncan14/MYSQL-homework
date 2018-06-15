CREATE DATABASE BAMAZON;

USE BAMAZON;

CREATE TABLE Products (
    -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
    items INTEGER(11) AUTO_INCREMENT NOT NULL,
	productName VARCHAR(30) NOT NULL,
    departmentName VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NULL,
    stockQuantity INT(20),
    -- Sets id as this table's primary key which means all data contained within it will be unique --
    PRIMARY KEY (items)
);
USE Bamazon;

INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Bacon Strainer", "Useless Things" , 15.00 , 125);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Trampoline", "Outdoors" , 100.00 , 30);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Sundress", "Clothing" , 25.00 , 150);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Shorts", "Clothing" , 25.00 , 200);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Googly Eyes", "Useless Things" , 1.00 , 500);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Playstation 4", "Gaming" , 350.00 , 250);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Xbox One", "Gaming" , 300.00 , 150);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Wii U", "Gaming" , 300.00 , 100);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("T-Shirt", "Clothing" , 20.00 , 225);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Laptop", "Computers" , 800.00 , 650);

SELECT * FROM Products;