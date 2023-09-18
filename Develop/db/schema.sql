-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;



USE ecommerce_db;

CREATE TABLE category
 (

  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

  category_name CHARACTER_LENGTH(30) NOT NULL
);


CREATE TABLE product
 (

  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

  product_name CHARACTER_LENGTH(30) NOT NULL,

  price DECIMAL(5,2) NOT NULL ISNUMERIC() ,

  stock INT NOT NULL VARCHAR(10) ISNUMERIC(),

  category_id INT,
  FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE Tag

(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

tag_name CHARACTER_LENGTH(30),
);


CREATE TABLE ProductTag
(
id INT NOT NULL AUTO_INCREMENT primary key(ProductTag),

product_id INT, 
FOREIGN KEY (product_id) REFERENCES product(id),

tag_id INT,
FOREIGN KEY (tag_id) REFERENCES Tag(id),

);



































