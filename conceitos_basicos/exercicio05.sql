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

CREATE TABLE produtos(
    Id INTEGER GENERATED ALWAYS IDENTITY PRIMARY KEY,
    nome VARCHAR(100)
    preco DECIMAL(10, 2)
);

INSERT INTO produtos(nome, preco)
VALUES('Mouse', 50), ('Teclado', 100);

/* Cria uma tabela que possui chaves estrangeiras */
CREATE TABLE pedidos(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cliente_id INTEGER,
    produto_id INTEGER,
    quantidade INTEGER,

    /* Aponta para os id's dos clientes */
    FOREIGN KEY(cliente_id) REFERENCES clientes(id),
    /* Aponta para os id's dos produtos */
    FOREIGN KEY(produto_id) REFERENCES produto(id)
);

/* Utilizando JOIN para juntar tabelas */
SELECT clientes.nome AS cliente, produtos.nome AS produto
FROM pedidos

/* Pega a tabela clientes para pegar a informação correspondete de pedidos */
JOIN clientes ON pedidos.cliente_id = clientes.id

/* Pega a tabela produtod para pegar a informação correspondete de pedidos */
JOIN produtos ON pedios.produto_id = produtos.id;