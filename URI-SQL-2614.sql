CREATE DATABASE URI2614;
USE URI2614;

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    street VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL
);

CREATE TABLE rentals(
	id INT PRIMARY KEY AUTO_INCREMENT,
    rentals_date DATE NOT NULL,
	id_customers INT NOT NULL,
    FOREIGN KEY(id_customers) REFERENCES customers(id) ON UPDATE CASCADE
);

INSERT INTO customers VALUES(0,'Giovanna Goncalves Oliveira','Rua Mato Grosso','Canoas'),
(0,'Kauã Azevedo Ribeiro','Travessa Ibiá','Uberlândia'),
(0,'Rebeca Barbosa Santos','Rua Observatório Meteorológico','Salvador'),
(0,'Sarah Carvalho Correia','Rua Antônio Carlos da Silva','Apucarana'),
(0,'João Almeida Lima','Rua Rio Taiuva','Ponta Grossa'),
(0,'Diogo Melo Dias','Rua Duzentos e Cinqüenta','Várzea Grande');

INSERT INTO rentals VALUES(0,'2016-09-10',3),
(0,'2016-02-09',1),
(0,'2016-02-08',4),
(0,'2016-02-09',2),
(0,'2016-02-03',6),
(0,'2016-04-04',4);

SELECT 
customers.name, rentals.rentals_date
FROM
customers
INNER JOIN
rentals
ON customers.id = rentals.id_customers WHERE extract(MONTH FROM rentals.rentals_date) = 9;