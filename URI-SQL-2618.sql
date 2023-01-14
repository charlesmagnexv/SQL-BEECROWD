CREATE DATABASE URI2618;
USE URI2618;

CREATE TABLE products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    amonut DOUBLE NOT NULL,
    price DOUBLE NOT NULL,
    id_providers INT NOT NULL,
    id_categories INT NOT NULL,
    FOREIGN KEY (id_providers) REFERENCES providers(id) ON UPDATE CASCADE,
    FOREIGN KEY (id_categories) REFERENCES categories(id) ON UPDATE CASCADE
);

CREATE TABLE providers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(2)
);

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);


INSERT INTO categories VALUES(0,'Super Luxury'),
(0,'Imported'),
(0,'Tech'),
(0,'Vintage'),
(0,'Supreme');


INSERT INTO providers VALUES(0,'Ajax SA','Rua Presidente Castelo Branco','Porto Alegre','RS'),
(0,'Sansul SA','Av Brasil','Rio de Janeiro','RJ'),
(0,'South Chairs','Rua do Moinho','Santa Maria','RS'),
(0,'Elon Electro','Rua Apolo','São Paulo','SP'),
(0,'Mike Electro',	'Rua Pedro da Cunha','Curitiba','PR');

INSERT INTO products VALUES(0,'Blue Chair',30,300.00,5,5),
(0,'Red Chair',50,2150.00,2,1),
(0,'Disney Wardrobe',400,829.50,4,1),
(0,'Blue Toaster',20,9.90,3,1),
(0,'TV',30,3000.25,2,2);

SELECT
products.name, providers.name,categories.name
FROM
products
INNER JOIN 
categories
ON products.id_categories = categories.id
INNER JOIN
providers
ON products.id_providers = providers.id WHERE providers.name = 'Sansul SA' AND categories.name = 'Imported';

