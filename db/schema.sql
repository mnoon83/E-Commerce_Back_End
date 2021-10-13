CREATE DATABASE commerce_db;

USE commerce_db;
CREATE TABLE category (
	id INT PRIMARY KEY NOT NULL,
    cat_name VARCHAR (15) NOT NULL,
);

USE commerce_db;
CREATE TABLE product (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    product_name VARCHAR (15) NOT NULL,
    price INT NOT NULL DECIMAL (8,2) NOT NULL,
    stock INT DEFAULT (10) NOT NULL,
    cat_name INT FOREIGN KEY category REFERENCE category(id),
);