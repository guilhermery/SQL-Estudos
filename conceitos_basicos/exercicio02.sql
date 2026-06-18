CREATE DATABASE loja;

CREATE TABLE clientes (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(50)
);

/* É possível inserir mais de uma linha ao mesmo tempo */
INSERT INTO clientes (nome, idade, cidade)
VALUES('Guilherme', 20, 'Pau dos ferros'),
('Maria', 24, 'Mossoró');

/* Selecionar apenas colunas específicas */
SELECT nome, idade FROM clientes;

/* Formas de filtrar dados com WHERE*/
/* Operador de igualdade */
SELECT * FROM clientes WHERE nome = 'Guilherme';

/* Operador de maior e menor que */
SELECT * FROM clientes WHERE idade > 18;
SELECT * FROM clientes WHERE idade < 20;

/* Operador de diferença */
SELECT * FROM clientes WHERE nome <> 'Maria';

/* Operadores AND e OR */
SELECT * FROM clientes WHERE nome <> 'Maria' AND idade >= 20;
SELECT * FROM clientes WHERE cidade = 'Natal' OR cidade = 'Pau dos Ferros';