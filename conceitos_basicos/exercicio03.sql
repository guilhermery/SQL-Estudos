CREATE DATABASE loja;

CREATE TABLE clientes(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(50)
);

INSERT INTO clientes(nome, idade, cidade)
VALUES('Guilherme', 20, 'Pau dos ferros'),
('Maria', 24, 'Mossoró');

/* Buscar em clientes onde o nome inicia com M (o % indica algo depois) */
SELECT * FROM clientes WHERE nome LIKE 'M%';

/* Buscar em clientes onde o nome possui 'ar' */
SELECT * FROM clientes WHERE nome LIKE '%ar%';