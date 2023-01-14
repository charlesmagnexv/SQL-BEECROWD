CREATE DATABASE URI2611;
USE URI2611;

CREATE TABLE genres(
	id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(45) NOT NULL
);

CREATE TABLE movies(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    id_genres INT NOT NULL,
    FOREIGN KEY(id_genres) REFERENCES genres(id) ON UPDATE CASCADE
);

INSERT INTO genres VALUES(0,'Animation'),
(0,'Horror'),
(0,'Action'),
(0,'Drama'),
(0,'Comedy');

INSERT INTO movies VALUES(0,'Batman',3),
(0,'The Battle of the Dark River',3),
(0,'White Duck',1),
(0,'Breaking Barriers',4),
(0,'The Two Hours',2);


SELECT movies.id, movies.name
FROM
movies
INNER JOIN
genres
ON movies.id_genres = genres.id WHERE genres.description='Action';