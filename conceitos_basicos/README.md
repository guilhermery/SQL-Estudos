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
