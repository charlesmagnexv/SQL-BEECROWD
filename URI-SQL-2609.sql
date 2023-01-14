CREATE DATABASE URI2609;
USE URI2609;

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL
);

CREATE TABLE products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    amount INT NOT NULL,
    price DOUBLE NOT NULL,
    id_categories INT NOT NULL,
    FOREIGN KEY (id_categories) REFERENCES categories(id) ON UPDATE CASCADE
);

INSERT INTO categories VALUES(0,'wood'),
(0,'luxury'),
(0,'vintage'),
(0,'modern'),
(0,'super luxury');

INSERT INTO products VALUES(0,'Two-doors wardrobe',100,800,1),
(0,'Dining table',1000,560,3),
(0,'Towel holder',10000	,25.50,4),
(0,'Computer desk',350,320.50,2),
(0,'Chair',3000,210.64,4),
(0,'Single bed',750,460,1);

SELECT categories.nome, SUM(products.amount)
FROM
products
INNER JOIN
categories
ON products.id_categories = categories.id GROUP BY categories.nome;
