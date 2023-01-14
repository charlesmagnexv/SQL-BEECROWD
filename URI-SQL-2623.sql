CREATE DATABASE URI2623;
USE URI2623;

CREATE TABLE products(
	id INT PRIMARY KEY auto_increment,
	name VARCHAR(255),
	amount	DOUBLE,
	price	DOUBLE,
	id_categories INT,
    FOREIGN KEY(id_categories) REFERENCES categories(id) ON UPDATE CASCADE
);

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255)
);

INSERT INTO categories VALUES(1,'Superior'),
(2,	'Super Luxury'),
(3,	'Modern'),
(4,	'Nerd'),
(5,	'Infantile'),
(6,	'Robust'),
(9,	'Wood');

INSERT INTO products VALUES(1,'Blue Chair',	30,	300.00,	9),
(2,	'Red Chair',200,2150.00,2),
(3,	'Disney Wardrobe',400,829.50,4),
(4,	'Blue Toaster',20,9.90,3),
(5,	'Solar Panel',30,3000.25,4);

SELECT
products.name, categories.name
FROM
products
INNER JOIN
categories
ON categories.id = products.id_categories
WHERE (products.amount > 100) AND ( categories.id = 1 OR categories.id = 2 OR
categories.id = 3 OR categories.id = 6 OR categories.id = 9) order by categories.id;