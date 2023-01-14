CREATE DATABASE URI2738;
USE URI2738;

CREATE TABLE cadidate(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL
);


CREATE TABLE score(
	candidate_id INT NOT NULL,
	math DOUBLE NOT NULL,
	specifico DOUBLE NOT NULL,
	project_plan DOUBLE NOT NULL,
    FOREIGN KEY (candidate_id) REFERENCES candidate(id) ON UPDATE CASCADE
);

RENAME TABLE cadidate TO candidate;

INSERT INTO candidate VALUES(1,	'Michael P Cannon'),
(2,	'Barbra J Cable'),
(3,	'Ronald D Jones'),
(4,	'Timothy K Fitzsimmons'),
(5,	'Ivory B Morrison'),
(6,	'Sheila R Denis'),
(7,	'Edward C Durgan'),
(8,	'William K Spencer'),
(9,	'Donna D Pursley'),
(10,	'Ann C Davis');


INSERT INTO score VALUES(1,	76,	58,	21),
(2,	4,	5,	22),
(3,	15,	59,	12),
(4,	41,	42,	99),
(5,	22,	90,	9),
(6,	82,	77,	15),
(7,	82,	99,	56),
(8,	11,	4,	22),
(9,	16,	29,	94),
(10,	1,	7,	59);

SELECT * FROM score;

UPDATE score SET score.project_plan = 21 WHERE score.candidate_id = 1;

SELECT candidate.name, ROUND(
	( ( (score.math*2) + (score.specifico*3) + (score.project_plan)*5 ) / 10 ),
	2) AS 'avg'
FROM 
candidate
INNER JOIN
score
ON candidate.id = score.candidate_id
ORDER BY 'avg' DESC;