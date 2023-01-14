CREATE DATABASE EMPRESA;
USE EMPRESA;

CREATE TABLE providers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    street VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL,
    state VARCHAR(45) NOT NULL
);


SELECT * FROM providers;
SELECT * FROM products;
SELECT * FROM categories;

CREATE TABLE categories(
	id INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL
);

CREATE TABLE products(
	id INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL,
    amount INT NOT NULL,
    price DOUBLE NOT NULL,
    id_providers INT NOT NULL,
    id_categories INT NOT NULL,
    FOREIGN KEY (id_providers) REFERENCES providers(id) ON UPDATE CASCADE,
    FOREIGN KEY (id_categories) REFERENCES categories(id) ON UPDATE CASCADE
);

INSERT categories VALUES(0,'old stock'),
(0,'new stock'),
(0,'modern'),
(0,'commercial'),
(0,'recyclable'),
(0,'executive'),
(0,'superior'),
(0,'wood'),
(0,'super luxury'),
(0,'vintage');

INSERT providers VALUES(0,'Henrique','Av Brasil','Rio de Janeiro','RJ'),
(0,'Marcelo Augusto','Rua Imigrantes','Belo Horizonte','MG'),
(0,'Caroline Silva','Av São Paulo','Salvador','BA'),
(0,'Guilerme Staff','Rua Central','Porto Alegre','RS'),
(0,'Isabela Moraes','Av Juiz Grande','Curitiba','PR'),
(0,'Francisco Accerr','Av Paulista','São Paulo','SP');

INSERT products VALUES(0,'Two-door wardrobe',100,800,6,8),
(0,'Dining table',1000,560,1,9),
(0,'Towel holder',10000,25.50,5,1),
(0,'Computer desk',350,320.50,4,6),
(0,'Chair',3000,210.64,3,6),
(0,'Single bed',750,460,1,2);

SELECT products.nome, providers.nome
FROM 
products
INNER JOIN
providers
ON products.id_providers = providers.id  WHERE products.id_categories = 6;


/*
SELECT products.nome, providers.nome
FROM products, providers
WHERE products.id_categories = 6;
*/

