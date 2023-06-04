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
~~~


## WHERE

~~~mysql
# Condição com o dado espeficado

-- Selecionar todos os dados da tabela de usuario com o id 1
SELECT * FROM usuario WHERE id = 1;
~~~

## INNER JOIN


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
INSERT INTO nomeDaTabela (nomeDoAtributo) values ("valorDoAtributo");
```

---

## ALTER 

### ALTER TABLE - Alterar na tabela seus tipos de dados
```mysql 
alter table uc add constraint fk_curso foreign key (id_curso)
references curso (id_curso); 
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



