CREATE DATABASE URI2624;
USE URI2624;

CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name	VARCHAR(255) NOT NULL,
	street	VARCHAR(255) NOT NULL,
	city	VARCHAR(255) NOT NULL,
	state	VARCHAR(2) NOT NULL,
	credit_limit DOUBLE NOT NULL
);

INSERT INTO customers VALUES(1,	'Nicolas Diogo Cardoso','Acesso Um','Porto Alegre',	'RS',	475),
(2,	'Cecília Olivia Rodrigues',	'Rua Sizuka Usuy',	'Cianorte',	'PR',3170),
(3,	'Augusto Fernando Carlos Eduardo Cardoso',	'Rua Baldomiro Koerich',	'Palhoça',	'SC',	1067),
(4, 'Nicolas Diogo Cardoso',	'Acesso Um',	'Porto Alegre',	'RS',	475),
(5,	'Sabrina Heloisa Gabriela Barros',	'Rua Engenheiro Tito Marques Fernandes',	'Porto Alegre',	'RS',4312),
(6,	'Joaquim Diego Lorenzo Araújo',	'Rua Vitorino',	'Novo Hamburgo',	'RS',	2314);

SELECT
count(DISTINCT customers.city)
FROM
customers;