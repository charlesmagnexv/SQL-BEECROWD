CREATE DATABASE URI2740;
USE URI2740;

CREATE TABLE league(
	position INT PRIMARY KEY AUTO_INCREMENT,
	team VARCHAR(45) NOT NULL
);
INSERT INTO league VALUES(1,	'The Quack Bats'),
(2,	'The Responsible Hornets'),
(3,	'The Bawdy Dolphins'),
(4,	'The Abstracted Sharks'),
(5,	'The Nervous Zebras'),
(6,	'The Oafish Owls'),
(7,	'The Unequaled Bison'),
(8,	'The Keen Kangaroos'),
(9,	'The Left Nightingales'),
(10,	'The Terrific Elks'),
(11,	'The Lumpy Frogs'),
(12,	'The Swift Buffalo'),
(13,	'The Big Chargers'),
(14,	'The Rough Robins'),
(15,	'The Silver Crocs');

(SELECT CONCAT('Podium: ',team) as name
FROM league 
LIMIT 3)

UNION ALL

(SELECT CONCAT('Demoted: ',team)
FROM league
where position > any(select count(*)-2 from league));

(select concat('Podium: ',team)as name
from league
order by position
limit 3)
union all
(select concat('Demoted: ',team)as name
from league
where position>any(select count(*)-2 from league))
