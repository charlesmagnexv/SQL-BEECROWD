CREATE DATABASE URI2737;
USE URI2737;

CREATE TABLE lawyers(
	register INT PRIMARY KEY,
	name	varchar(45) NOT NULL,
	customers_number	INT
);

INSERT INTO lawyers VALUES(1648,	'Marty M. Harrison',	5),
(2427,	'Jonathan J. Blevins',	15),
(3365,	'Chelsey D. Sanders',	20),
(4153,	'Dorothy W. Ford',	16),
(5525,	'Penny J. Cormier',	6);

-- SELECT * FROM lawyers;
(
SELECT lawyers.name,
lawyers.customers_number
FROM
lawyers
ORDER BY customers_number DESC
LIMIT 1
)
UNION ALL
(
SELECT name, customers_number
FROM 
lawyers
ORDER BY customers_number ASC
LIMIT 1
)
UNION ALL
(
SELECT 'Average', round(AVG(customers_number),0)
FROM
lawyers
);