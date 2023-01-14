CREATE DATABASE URI2739;

USE URI2739;

CREATE TABLE loan(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name	VARCHAR(45) NOT NULL,
	value	DOUBLE NOT NULL,
	payday	DATE NOT NULL
);

INSERT INTO loan VALUES(1,	'Cristian Ghyprievy',	3000.50,	'2017-10-19'),
(2,	'John Serial',	10000,	'2017-10-10'),
(3,'Michael Seven',	5000.40,	'2017-10-17'),
(4,	'Joana Cabel',	2000,	'2017-10-05'),
(5,	'Miguel Santos',	4050,	'2017-10-20');

SELECT name, CAST(extract(DAY FROM payday) AS INTEGER) AS day
FROM
loan;