CREATE DATABASE loja;

CREATE TABLE clientes(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER NOT NULL,
    cidade VARCHAR(50)
);

INSERT INTO clientes(nome, idade, cidade)
VALUES('Guilherme', 20, 'Pau dos ferros'),
('Maria', 24, 'Mossoró');

/* Analisa quantos clientes tem na tabela */
SELECT COUNT(*) FROM clientes;

/* Analisa a media */
SELECT AVG(idade) FROM clientes;

/* Analisa o maior e o menor */
SELECT MAX(idade) FROM clientes;
SELECT MIN(idade) FROM clientes;

/* Para agrupar informações, como quantos clientes há por cidade */
/* O Group by junta informações de linhas iguais */
SELECT cidade, COUNT(*) 
FROM clientes GROUP BY cidade;