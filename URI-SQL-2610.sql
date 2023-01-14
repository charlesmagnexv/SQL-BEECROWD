CREATE DATABASE URI2610;
USE URI2610;

CREATE TABLE products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    amount INT NOT NULL,
    price DOUBLE NOT NULL
);

INSERT INTO products VALUES(0,'Two-doors wardrobe',100,800),
(0,'Dining table',1000,560),
(0,'Towel holder',10000,25.50),
(0,'Computer desk',350,320.50),
(0,'Chair',3000,210.64),
(0,'Single bed',750,460);

SELECT ROUND(AVG(price),2)
FROM
products;