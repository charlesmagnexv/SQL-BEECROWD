create database uri2746;
use uri2746;
create table virus(
	id INT PRIMARY KEY auto_increment,
	name VARCHAR(45) NOT NULL
);

INSERT INTO virus values(1,	'H1RT'),
(2,	'H7H1'),
(3,	'HUN8'),
(4,	'XH1HX'),
(5,	'XXXX');

select replace(name,'H1','X') as name from virus;