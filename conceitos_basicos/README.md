# Conceitos Básicos de SQL

## Sobre o conteúdo
Nesta pasta foram desenvolvidos exercícios de SQL com conceitos básicos e iniciais para o entendimento da linguagem, entre eles:

- SELECT e INSERT
- Filtração de dados com WHERE
- LIKE e ORDER BY
- UPDATE SET e DELETE
- PRIMARY KEY e FOREIGN KEY
- JOIN 
- Análises com COUNT, AVG, SUM e outros
- ALTER TABLE - ADD e DROP

Foi o início do contato com o SQL, aprendendo conceitos sobre banco de dados, como criar e apagar tabelas, como inserir, filtrar e alterar dados, adicionar e apagar colunas, ordenação 

---

# Índice
- [Exercício 01](#exercício-01)
- [Exercício 02](#exercício-02)
- [Exercício 03](#exercício-03)
- [Exercício 04](#exercício-04)
- [Exercício 05](#exercício-05)
- [Exercício 06](#exercício-06)
- [Exercício 07](#exercício=07)

---

# Exercício 01
[Ver codigo](./exercicio01.sql)

## Objetivo
Criação de um banco de dados e uma tabela, inserção de dados e consulta.

## O que foi utilizado
- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT`
- `SELECT`
- Coluna com geração automática de valores (`INTEGER GENERATED ALWAYS`)
- Coluna com valores de tipo `VARCHAR` e `INTEGER`

## O que foi utilizado

- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT`
- `SELECT`
- Coluna com geração automática (`GENERATED ALWAYS AS IDENTITY`)
- Tipos de dados `VARCHAR` e `INTEGER`

## Explicação

O código cria um banco de dados chamado `loja` através do comando `CREATE DATABASE`.

Depois é criada a tabela `clientes` contendo as colunas:

- `id`: coluna inteira com geração automática de valores, usada como chave primária.
- `nome`: coluna de texto com tamanho variável.
- `idade`: coluna inteira obrigatória.
- `cidade`: coluna de texto com tamanho variável.

O comando `NOT NULL` impede que uma coluna receba valores nulos.

Após a criação da tabela, foram inseridos dados por meio do comando INSERT:
``` 
INSERT INTO clientes(nome, idade, cidade)
VALUES('Guilherme', 20, 'Pau dos Ferros');
```
Por fim, para consultar os dados da tabela, foi utilizado o comando SELECT, em que o * indica que está consultando tudo que existe na tabela 'clientes':
```
SELECT * FROM clientes;
```

## Aprendizado 
- Criação de banco de dados e tabelas utilizando SQL.
- Definição de tipos de dados para as colunas.
- Uso de chave primária com geração automática de valores.
- Inserção de registros na tabela.
- Realização de consultas básicas com `SELECT`.
---

# Exercício 02
[Ver codigo](./exercicio02.sql)

## Objetivo

Realizar consultas utilizando filtros, seleção de colunas específicas e operadores condicionais no SQL.

## O que foi utilizado

- Seleção de colunas específicas no `SELECT`
- Cláusula `WHERE`
- Operador de igualdade (`=`)
- Operadores de comparação (`>` e `<`)
- Operador de diferença (`<>`)
- Operadores lógicos (`AND` e `OR`)

## Explicação

Neste exercício foram utilizados novos recursos de consulta em SQL, principalmente através do comando `SELECT`.

Diferente do exercício anterior, onde era utilizado `SELECT * FROM clientes;` para buscar todos os dados da tabela, agora é possível selecionar apenas algumas colunas específicas com `SELECT nome, idade FROM clientes;`
Nesse caso, somente os campos `nome` e `idade` serão exibidos no resultado.

Também foi utilizada a cláusula `WHERE`, que permite filtrar os registros de acordo com uma condição. Exemplo utilizando o operador de igualdade: `SELECT * FROM clientes WHERE nome = 'Guilherme';`. Esse comando retorna apenas os registros onde o valor da coluna `nome` seja igual a "Guilherme".

Também foram utilizados os operadores lógicos `AND` e `OR`. O operador `AND` exige que todas as condições sejam verdadeiras e o operador `OR` retorna os registros que atendam pelo menos uma das condições

## Aprendizado 
- Seleção de colunas específicas em consultas SQL.
- Uso da cláusula `WHERE` para filtrar dados.
- Aplicação de operadores de comparação (`>`, `<`, `<>`).
- Uso de operadores lógicos (`AND` e `OR`) para criar condições.
- Aprimoramento da manipulação e busca de informações no banco de dados.
---

# Exercício 03
[Ver codigo](./exercicio03.sql)

## Objetivo

Realizar consultas utilizando padrões de busca em textos com o operador `LIKE`.

## O que foi utilizado

- Operador `LIKE`
- Coringa `%` para busca de padrões
- Cláusula `WHERE`
- Seleção de todos os dados com `SELECT *`

## Explicação

Neste exercício foi introduzido o operador `LIKE`, utilizado para realizar buscas flexíveis em campos de texto.

Diferente das consultas exatas utilizando `=`, o `LIKE` permite buscar padrões dentro dos valores das colunas.

Exemplo de busca por nomes que começam com a letra "M":`SELECT * FROM clientes WHERE nome LIKE 'M%';`. O símbolo `%` representa qualquer sequência de caracteres após a letra "M", ou seja, retorna todos os nomes que iniciam com "M".

Também é possível buscar padrões em qualquer posição do texto. Exemplo: `SELECT * FROM clientes WHERE nome LIKE '%ar%';`. 
Nesse caso, o comando retorna todos os registros onde a sequência "ar" aparece em qualquer parte do nome, independentemente da posição.

## Aprendizado 

- Uso do operador `LIKE` para buscas flexíveis.
- Entendimento do uso do curinga `%` em consultas SQL.
- Realização de filtros avançados em campos de texto.
- Melhoria na manipulação de consultas com padrões de string.
---

# Exercício 04
[Ver codigo](./exercicio04.sql)

## Objetivo

Realizar consultas com ordenação, limitação de resultados e alteração de dados em uma tabela SQL.

## O que foi utilizado

- Ordenação com `ORDER BY`
- Ordenação crescente (`ASC`)
- Ordenação decrescente (`DESC`)
- Limitação de resultados com `LIMIT`
- Alteração de dados com `UPDATE`
- Exclusão de dados com `DELETE`
- Cláusula `WHERE`

## Explicação

Neste exercício foram utilizados comandos para manipular e organizar os dados já inseridos na tabela.

O comando `ORDER BY` permite organizar os resultados de uma consulta conforme uma coluna específica.

Exemplo ordenando pela idade em ordem crescente: `SELECT * FROM clientes ORDER BY idade ASC;`. O `ASC` organiza os valores do menor para o maior. Ele pode ser omitido, pois é o comportamento padrão.

Também é possível ordenar em ordem decrescente utilizando: `SELECT * FROM clientes ORDER BY idade DESC;`. 
Nesse caso, os maiores valores aparecem primeiro.

Para limitar a quantidade de registros exibidos foi utilizado o comando: `SELECT * FROM clientes LIMIT 2;`. 
Esse comando retorna apenas os dois primeiros resultados da consulta.

Também foi utilizado o comando `UPDATE`, que permite alterar dados existentes.

Alterando um registro específico: `UPDATE clientes SET idade = 21 WHERE id = 1;`. A cláusula `WHERE` garante que apenas o registro com o `id` informado seja alterado. Sem ele, todos os registros da tabela seriam alterados.

Por fim, foi utilizado o comando `DELETE`, que remove registros da tabela. Exemplo: `DELETE FROM clientes WHERE id = 2;`. 
O `WHERE` define qual registro será excluído, evitando apagar todos os dados da tabela.

## Aprendizado 

- Organização de resultados utilizando `ORDER BY`.
- Controle da quantidade de dados exibidos com `LIMIT`.
- Alteração de registros existentes com `UPDATE`.
- Exclusão de registros com `DELETE`.
- Importância do uso do `WHERE` para evitar alterações indesejadas.
---

# Exercício 05
[Ver codigo](./exercicio05.sql)

## Objetivo

Criar relacionamento entre tabelas utilizando chaves estrangeiras e realizar consultas juntando dados de tabelas diferentes.

## O que foi utilizado

- Criação de tabelas relacionadas
- Chave estrangeira (`FOREIGN KEY`)
- Referência entre tabelas (`REFERENCES`)
- Relacionamento entre dados
- Comando `JOIN`
- Alias com `AS`

## Explicação

Neste exercício foram introduzidos os conceitos de relacionamento entre tabelas utilizando chaves estrangeiras.

Além da tabela `clientes`, foi criada uma nova tabela chamada `produtos`, contendo informações dos produtos disponíveis.

Depois foi criada a tabela `pedidos`, que possui as colunas:

- `cliente_id`: guarda o id do cliente relacionado ao pedido.
- `produto_id`: guarda o id do produto relacionado ao pedido.
- `quantidade`: informa a quantidade de produtos no pedido.

As colunas `cliente_id` e `produto_id` utilizam `FOREIGN KEY`, que cria uma ligação com outras tabelas através do comando `REFERENCES`. 

Exemplo: `FOREIGN KEY(cliente_id) REFERENCES clientes(id)`. 
Essa relação impede que sejam inseridos pedidos com clientes que não existem na tabela `clientes`.

Para consultar informações de tabelas relacionadas foi utilizado o `JOIN`:

```
SELECT clientes.nome AS cliente, produtos.nome AS produto
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id
JOIN produtos ON pedidos.produto_id = produtos.id;
```

O `JOIN` permite unir os dados de tabelas diferentes utilizando uma coluna em comum.

O comando `AS` foi utilizado para criar apelidos nas colunas retornadas pela consulta, deixando o resultado mais organizado.

## Aprendizado 

- Criação de relacionamentos entre tabelas.
- Uso de chaves estrangeiras para conectar dados.
- Compreensão de como tabelas se comunicam em um banco de dados.
- Consulta de informações utilizando `JOIN`.
- Organização dos resultados com alias usando `AS`.
---

# Exercício 06
[Ver codigo](./exercicio06.sql)

## Objetivo

Realizar consultas utilizando funções de agregação e agrupamento de dados em SQL.

## O que foi utilizado

- Funções de agregação
- `COUNT`
- `AVG`
- `MAX`
- `MIN`
- Agrupamento com `GROUP BY`

## Explicação

Neste exercício foram utilizadas funções de agregação, que permitem realizar cálculos e análises sobre os dados de uma tabela.

A função `COUNT` é utilizada para contar a quantidade de registros existentes: `SELECT COUNT(*) FROM clientes;`. 
Nesse caso, o comando retorna o total de clientes cadastrados na tabela.

A função `AVG` calcula a média dos valores de uma coluna: `SELECT AVG(idade) FROM clientes;`. O resultado será a média das idades dos clientes.


Por fim, foi utilizado o `GROUP BY`, que permite agrupar registros que possuem valores iguais em uma determinada coluna.

Exemplo: 
```
SELECT cidade, COUNT(*)
FROM clientes GROUP BY cidade;
```

Esse comando agrupa os clientes por cidade e mostra quantos clientes existem em cada uma delas.

## Aprendizado 

- Uso de funções de agregação para analisar dados.
- Contagem de registros com `COUNT`.
- Cálculo de médias utilizando `AVG`.
- Busca de maiores e menores valores com `MAX` e `MIN`.
- Organização de informações por grupos utilizando `GROUP BY`.
---

# Exercício 07
[Ver codigo](./exercicio07.sql)

## Objetivo

Alterar a estrutura de uma tabela existente adicionando e removendo colunas.

## O que foi utilizado

- Alteração de estrutura com `ALTER TABLE`
- Adição de coluna com `ADD COLUMN`
- Exclusão de coluna com `DROP COLUMN`
- Definição de valor padrão com `DEFAULT`

## Explicação

Neste exercício foi utilizado o comando `ALTER TABLE`, que permite modificar a estrutura de uma tabela já criada.

Para adicionar uma nova coluna na tabela `clientes` foi utilizado:
```
ALTER TABLE clientes
ADD COLUMN email varchar(60) NOT NULL DEFAULT '@gmail.com';
```

Esse comando cria uma nova coluna chamada `email`, definindo o tipo de dado como `VARCHAR` e tornando o preenchimento obrigatório com `NOT NULL`.

O `DEFAULT` define um valor padrão para a coluna caso nenhum valor seja informado.

Também foi utilizado o comando `DROP COLUMN`, que remove uma coluna existente:
```
ALTER TABLE clientes
DROP COLUMN email;
```

Nesse caso, a coluna `email` é excluída completamente da tabela.

## Aprendizado 

- Alteração da estrutura de tabelas já existentes.
- Criação de novas colunas utilizando `ADD COLUMN`.
- Remoção de colunas com `DROP COLUMN`.
- Uso de valores padrões com `DEFAULT`.
- Manipulação da estrutura de um banco de dados sem recriá-lo.