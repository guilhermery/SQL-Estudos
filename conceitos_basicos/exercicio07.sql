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

/* Colocar um novo campo (nova coluna) */
ALTER TABLE clientes 
ADD COLUMN email varchar(60) NOT NULL DEFAULT '@gmail.com';

/* Excluir uma coluna */
ALTER TABLE clientes
DROP COLUMN email;