CREATE DATABASE URI2620;
USE URI2620;

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name	VARCHAR(255),
	street	VARCHAR(255) NOT NULL,
	city	VARCHAR(255) NOT NULL,
	state	VARCHAR(2) NOT NULL,
	credit_limit DOUBLE NOT NULL
);

CREATE TABLE orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
	orders_date	DATE NOT NULL,
	id_customers INT NOT NULL,
    FOREIGN KEY(id_customers) REFERENCES customers(id) ON UPDATE CASCADE
);

INSERT INTO customers VALUES(0,'Nicolas Diogo Cardoso','Acesso Um','Porto Alegre','RS',475),
(0,'Cecília Olivia Rodrigues','Rua Sizuka Usuy','Cianorte','PR',3170),
(0,'Augusto Fernando Carlos Eduardo Cardoso','Rua Baldomiro Koerich','Palhoça','SC',1067),
(0,'Nicolas Diogo Cardoso','Acesso Um','Porto Alegre','RS',475),
(0,'Sabrina Heloisa Gabriela Barros','Rua Engenheiro Tito Marques Fernandes','Porto Alegre','RS',4312),
(0,'Joaquim Diego Lorenzo Araújo','Rua Vitorino','Novo Hamburgo','RS',2314 );

INSERT INTO orders VALUES(0,'2016-05-13',3),
(0,'2016-01-12',2),
(0,'2016-04-18',5),
(0,'2016-09-07',4),
(0,'2016-02-13',6),
(0,'2016-08-05',3);



SELECT
customers.name, orders.id
FROM
customers
INNER JOIN
orders
ON customers.id = orders.id_customers 
WHERE orders.orders_date BETWEEN '2016-01-01' AND '2016-06-30' ORDER BY orders.id;