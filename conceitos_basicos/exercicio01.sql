/* Para criar um banco de dados */
CREATE DATABASE loja;

/* Para criar uma tabela e definir as colunas */
CREATE TABLE clientes (
    /* Garante que o id seja uma variável de auto incremento */
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(50)
);

/* Para inserir linhas com dados das respectivas colunas */
INSERT INTO clientes(nome, idade, cidade)
VALUES('Guilherme', 20, 'Pau dos Ferros');

INSERT INTO clientes(nome, idade, cidade)
VALUES('Maria', 30, 'Natal');

/* Para selecionar tudo da tabela e apresentar */
SELECT * FROM clientes;