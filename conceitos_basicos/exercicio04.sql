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

/* Organiza os resultados em ordem do menor para maior */
SELECT * FROM clientes ORDER BY idade ASC; /*ASC não obrigatorio*/

/* Organiza os resultados em ordem do maior para o menor */
SELECT * FROM clientes ORDER BY idade DESC;

/* Limita a apresentação dos resultados */
SELECT * FROM clientes LIMIT 2;

/* Altera dados de um id específico*/
UPDATE clientes SET idade = 21 WHERE id = 1;

/* Altera todos os dados */
UPDATE clientes SET idade = 30;

/* Deleta uma linha especifica */
DELETE FROM clientes WHERE id = 2;