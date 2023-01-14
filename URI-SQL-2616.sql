CREATE DATABASE URI2616;
USE URI2616;

CREATE TABLE customers(
	id INT PRIMARY KEY auto_increment,
    name VARCHAR(45) NOT NULL,
    street VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL
);

CREATE TABLE locations(
	id INT PRIMARY KEY AUTO_INCREMENT,
    location_date DATE,
    id_customers INT NOT NULL,
    FOREIGN KEY(id_customers) REFERENCES customers(id) ON UPDATE CASCADE
);

INSERT INTO customers VALUES(1,'Giovanna Goncalves Oliveira','Rua Mato Grosso','Canoas'),
(2,'Kauã Azevedo Ribeiro','Travessa Ibiá','Uberlândia'),
(3,	'Rebeca Barbosa Santos','Rua Observatório Meteorológico','Salvador'),
(4,	'Sarah Carvalho Correia','Rua Antônio Carlos da Silva',	'Apucarana'),
(5,	'João Almeida Lima','Rua Rio Taiuva','Ponta Grossa'),
(6,	'Diogo Melo Dias','Rua Duzentos e Cinqüenta','Várzea Grande');

INSERT INTO locations VALUES(0,	'2016-10-09',3),
(0,'2016-09-02',1),
(0,'2016-08-02',4),
(0,'2016-09-02',2),
(0,'2016-03-02',6),
(0,'2016-04-04',4);

SELECT * FROM locations;

SELECT id,name
FROM customers
WHERE id NOT IN(SELECT id_customers FROM locations);