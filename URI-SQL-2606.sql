CREATE DATABASE URI2606;
USE URI2606;

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL
);

CREATE TABLE products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    amount DOUBLE NOT NULL,
    price DOUBLE NOT NULL,
    id_categories INT NOT NULL,
    FOREIGN KEY (id_categories) REFERENCES categories(id) ON UPDATE CASCADE
);

INSERT categories VALUES(0,'old stock'),(0,'new stock'),(0,'modern'),
(0,'commercial'),(0,'recyclable'),(0,'executive'),(0,'superior'),
(0,'wood'),(0,'super luxury'),(0,'vintage');

INSERT products VALUES(0,'Lampshade',100,800,4),(0,'Table for painting',1000,560,9),
(0,'Notebook desk',10000,25.50,9),(0,'Computer desk',350,320.50,6),(0,'Chair',3000,210.64,9),
(0,'Home alarm',750,460,4);

SELECT products.id, products.nome
FROM 
products
INNER JOIN 
categories
ON products.id_categories = categories.id WHERE categories.id = 7 OR categories.id = 9;

