<div>
   <h1> MYSQL </h1>
</div>


## Adicionar Comentário
~~~mysql
-- comentário 1
# comentário 2
/* comentário 3 */
~~~


### USE - Acessar o banco de dados, para criar coisas dentro

~~~mysql
-- acessar o banco para fazer as modificações
USE nomeDoBancoDeDados;
~~~

## SELECT 

### SELECT FROM
~~~mysql
-- Seleção de dados nome na tabela de usuario
SELECT nome FROM usuario; 

-- Selecionar todos os dados da tabela de usuario
SELECT * FROM usuario;

-- Obter o valor do ID pelo maior valor da chave primária da tabela
SELECT MAX(id) from tabela;
~~~

#### DATA E HORAS
~~~mysql
-- Selecionar dia atual
SELECT CURRENT_DATE();

-- Selecionar tempo atual
SELECT CURRENT_TIME();

-- Mostrar dia formatado padrão (DD/MM/YYYY) 
SELECT DATE_FORMAT("2017-06-15", "%d/%m/%Y") as dia;
# %y em minusculo mostra em (YY)
# %M em maisculo mostra o nome do mes
# %D em maisculo mostra data em ordinal (th, rd ...)


-- Mostrar hora formatada padrão (24horas)
SELECT TIME_FORMAT("20:30:10", "%T") as hora FROM relatorios;

-- Mostrar hora formatada (AM - PM)
SELECT TIME_FORMAT("20:30:10", "%r") as hora FROM relatorios;
# 8 horas da manhã será 8 horas AM
# 20 horas da noite será 8 horas PM
~~~




## WHERE

~~~mysql
# Condição com o dado espeficado

-- Selecionar todos os dados da tabela de usuario com o id 1
SELECT * FROM usuario WHERE id = 1;
~~~

## INNER JOIN
~~~mysql
SELECT u.id , u.nome , u.email , u.id_perfil, c.saldo -- abreviações das tabela e chamando seus dados
FROM usuarios as u --tabela definida como u
INNER JOIN conta_corrente as c --adicionar mais uma tabela e definir como c
ON u.id = c.id; -- condição_de_associação: Define um critério para avaliar duas linhas de dados que já estão associadas.
~~~

## LIKE
~~~mysql
WHERE CustomerName LIKE 'a%';	-- Localiza quaisquer valores que comecem com "a"
WHERE CustomerName LIKE '%a'; --	Localiza quaisquer valores que terminem com "a"
WHERE CustomerName LIKE '%or%';	-- Localiza quaisquer valores que tenham "ou" em qualquer posição
WHERE CustomerName LIKE '_r%';	-- Localiza quaisquer valores que tenham "ou" em qualquer posição
WHERE CustomerName LIKE 'a_%'	; -- Localiza quaisquer valores que comecem com "a" e tenham pelo menos 2 caracteres de comprimento
WHERE CustomerName LIKE 'a__%';	-- Localiza quaisquer valores que comecem com "a" e tenham pelo menos 3 caracteres de comprimento
WHERE ContactName LIKE 'a%o';	-- Localiza quaisquer valores que começam com "a" e terminam com "o"

--Exemple
SELECT * FROM usuarios WHERE nome LIKE 'a%';

~~~
---

# DANGEROUS COMMANDS


## CREATE 

### CREATE DATABASE - Criar um banco de dados

~~~mysql
create database if not exist nomeDoBancoDeDados;
~~~

### CREATE TABLE - Criar Tabela e adicionar atributos

~~~mysql
CREATE TABLE nomeDaTabela (
   nomeDaVariavel varchar(20),
   nomeDaVariavel2 int,
   nomeDaVariavel3 bool
);
~~~
###### Adiconei alguns exemplos mas existem diversos tipos de dados: <a href="https://cooperati.com.br/2012/09/mysql-srie-de-posts-3-tipos-de-dados-data-types/"> tipos de dados do mysql </a>

---

## INSERT INTO

### Inserir valores na tabela

```mysql 
-- Inserir dados na tabela
INSERT INTO nomeDaTabela (nomeDoAtributo) values ("valorDoAtributo");

-- INSERIR DIA e HORA ATUAL (Separados)
INSERT INTO tempo (dia , hora) values (current_date() , current_time());

-- Obtendo o ID do último registro adicionado pelo comando INSERT INTO usando a função LAST_INSERT_ID
INSERT INTO tabela (nome) VALUES ('Macoratti'); SELECT LAST_INSERT_ID();
# A função LAST_INSET_ID() retorna o último registro inserido, mas deve ser executada na mesma conexão que inseriu os registros. 
```

### Copiar dados de uma tabela insere em outra tabela]
~~~mysql
-- Copie todas as colunas de uma tabela para outra:
INSERT INTO table2
SELECT * FROM table1
WHERE condition;

-- Copie apenas algumas colunas de uma tabela para outra:
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

-- Copiar valores de duas tabelas diferentes
INSERT INTO relatorios (id_livro , id_user)
VALUES (
(SELECT id FROM livros WHERE id = 3) ,
(SELECT id FROM usuario WHERE id = 1)
); 

-- Inserir valores e Copiar valores de outras tabelas:
INSERT INTO relatorios (dia, tempo, id_livro , id_user ) 
VALUES(current_date() , current_time() , 
(SELECT id FROM livros WHERE id = 3) ,
(SELECT id_usuario FROM usuario WHERE id_usuario = 1) 
);
~~~

---

## ALTER 

### ALTER TABLE - Alterar na tabela seus tipos de dados
```mysql 
-- Adicionar uma coluna na tabela
ALTER TABLE table_name ADD column_name datatype;

-- Alterar tipo de dado de uma coluna
ALTER TABLE table_name MODIFY COLUMN column_name datatype;

--
ALTER TABLE table_name ADD CONSTRAINT fk_curso foreign key (id_curso) REFERENCES curso (id_curso); 

```

---

## UPDATE 

### UPDATE TABLE - Atualizar os dados da tabela
~~~mysql
update (a tabela que vai dar updat3) set (aqui você coloca a alteração) where (de onde que você quer alterar) 
~~~

exemplo:

~~~mysql
UPDATE pessoas SET sobrenome = "Simoes" WHERE id = 2; 
~~~

---

## DELETE 

### DELETE FROM
~~~mysql
DELETE FROM pessoas WHERE pessoaid = 3; -- deletar a pessoa do id 3
~~~

---

## PRIMARY KEY

### Adicionar chave primária em uma tabela 

~~~mysql
create table exemplo (
  id_exemplo int primary key
);
~~~

---

## AUTO_INCREMENT

### Incrementa a cada dado recebido
~~~mysql
create table exemplo (
  id_exemplo int primary key auto_increment
);
~~~

---

## NOT NULL

### os dados não podem receber nulo

~~~mysql
-- Exemplo: o nome do funcionario não pode ser nulo!

create table funcionario (
      nome_func varchar(30) not null      
);  
~~~

---

## CONSTRAINT

### colocar uma regra para a chave estrangeira

~~~mysql
-- Exemplo de Definir chave estrangeira ao criar tabela 
CREATE TABLE Carro
(
    ID_Carro integer PRIMARY KEY AUTOINCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer,
    CONSTRAINT fk_PesCarro FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
);

-- Exemplo para definir no ALTER TABLE
CREATE TABLE Carro
 (
     ID_Carro integer PRIMARY KEY AUTOINCREMENT,
     Nome varchar(255),
     Marca varchar(255),
     ID_Pessoa integer,
);


ALTER TABLE Carro
 ADD CONSTRAINT fk_PesCarro FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
~~~

##### Constraint é um objeto usado com a finalidade de colocar regras referentes à integridade e à consistência nas colunas das tabelas.

#### foreign key - chave estrangeira ou chave externa se refere ao tipo de relacionamento entre distintas tabelas de dados



