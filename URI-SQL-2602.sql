CREATE DATABASE CLIENTES;
USE CLIENTES;
CREATE TABLE CLI_CLIENTES(
	CLI_ID INT PRIMARY KEY AUTO_INCREMENT,
    CLI_NAME VARCHAR(45) NOT NULL,
    CLI_STREET VARCHAR(45) NOT NULL,
    CLI_CIDADE VARCHAR(45) NOT NULL,
    CLI_ESTADO VARCHAR(2) NOT NULL,
    CLI_CREDIT_LIMIT DOUBLE
);
INSERT INTO CLI_CLIENTES VALUES(0,'Pedro Augusto da Rocha','Rua Pedro Carlos Hoffman','Porto Alegre','RS',700.00),
(0,'Antonio Carlos Mamel','Av. Pinheiros','Belo Horizonte','MG',3500.50),
(0,'Luiza Augusta Mhor','Rua Salto Grande','Niteroi','RJ',4000.00),
(0,'Jane Ester','Av 7 de setembro','Erechim','RS',800.00),
(0,'Marcos Antônio dos Santos','Av Farrapos','Porto Alegre','RS',4250.25);

SELECT * FROM CLI_CLIENTES;

SELECT CLI_NAME
FROM CLI_CLIENTES
WHERE CLI_ESTADO = 'RS';

