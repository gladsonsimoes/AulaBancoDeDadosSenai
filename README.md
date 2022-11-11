# 1 - Aula Banco de dados

<a href="https://github.com/gladsonsimoes/AulaBancoDeDadosSenai/blob/main/imagensReferencias/imagens.md"> imagens para referencia </a>

<br>
<h1 align="center"> MYSQL </h1>


![image](https://user-images.githubusercontent.com/99969693/198150144-2fb6d715-9c97-43a3-afea-d7604a05224a.png)

~~~mysql
-- comentário 1
# comentário 2
/* comentário 3 */
~~~

<hr>
<h3> Sem Comentários: </h3>
<br>

~~~mysql
create database senai;
use senai; 
CREATE TABLE pessoas (pessoaid int, pessoaNome varchar(255), pessoaSobrenome varchar(255));
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (1,"Ramon","Nascimento"); 
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (2,"Gladson","Simões"); 
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (3,"Juan","Novais");
SELECT * FROM pessoas;
SELECT * FROM pessoas WHERE pessoaid = 1;
~~~

<hr>
<h3> Com Comentários: </h3>
<br>

~~~mysql
create database senai; /* criando um banco de dados (use Crtl + Enter em cada linha) */
-- selecionando a base ser usada 
use senai; /* é para acessar o database e criar coisa nele (no caso estou usando o database senai se eu quiser  usar outra database eu tenho que usar o use) */
-- Criando Tabela
CREATE TABLE pessoas (pessoaid int, pessoaNome varchar(255), pessoaSobrenome varchar(255)); /* criando uma tabela pessoas e seus atributos */
-- Inserindo Informações
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (1,"Ramon","Nascimento"); /* inserindo na tabela pessoas a pessoa Ramon e seus atributos */
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (2,"Gladson","Simões"); 
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (3,"Juan","Novais");

-- comando para selecionar tabela
SELECT * FROM pessoas; /* o Select é para mostrar os atributos selecionados da tabela , no caso aqui é selecionado o ( * ) que é para mostrar todos os atributos da tabela */
SELECT * FROM pessoas WHERE pessoaid = 1; /* WHERE é para colocar o parametro do atributo, e encontrar todos os dados de acordo na tabela */

-- Deletando pessoas
DELETE FROM pessoas WHERE pessoaid = 3; /* o DELETE ele deleta a tabela! */


-- Alterando Tabela e acrescentando atributo apelido
ALTER  TABLE pessoas add apelido varchar(255); # adicionar a tabela apelido

ALTER TABLE pessoas drop apelido; # deletar somente a tabela apelido

-- ver todas as databases criadas
show database; 
 
-- deletando o database senai2! - NÃO RECOMENDAVEL 
drop database senai2; 

-- deletando a tabela pessoas - NÃO RECOMENDAVEL
drop table pessoa;

-- alterar todos os nomes para Marcos -  NÃO RECOMENDAVEL
UPDATE pessoa SET pessoaNome = "Marcos"; 

-- alterar somente o nome do id 1 
UPDATE pessoa SET pessoaNome = "Marcos" WHERE pessoaid = 1;

-- Criando tabela função
create table funcao (funcID int, funcao varchar(255));
INSERT INTO funcao (funcID, funcao) VALUES (1,"BACKEND");
INSERT INTO funcao (funcID, funcao) VALUES (2,"FRONTEND");

-- Selecionando ela
select * from funcao;

-- Alterando tabela
alter table pessoa add funcId varchar(255);

-- alterando funcao (funcID) da tabela pessoas (pessoaID)
UPDATE pessoa SET funcID = 1 WHERE pessoaID = 1;
UPDATE pessoa SET funcID = 3 WHERE pessoaID = 1;
UPDATE pessoa SET funcID = 2 WHERE pessoaID = 2;

-- funcao para selecionar somente as tabelas que queira visualizar
select pessoa.pessoaNome, funcao.funcao from pessoa join funcao on pessoa.funcID = funcao.funcID;
~~~

~~~mysql
-- Criando banco de Dados
create database senai;

-- Selecionando base a ser usada
use senai;

-- Criando Tabela
CREATE TABLE pessoa (pessoaid int,  pessoaNome varchar(255), pessoaSobrenome varchar(255)); 

-- Inserindo Informações
INSERT INTO pessoa (pessoaid, pessoaNome, pessoaSobrenome) values (1,"Ramon","Nascimento");
INSERT INTO pessoa (pessoaid, pessoaNome, pessoaSobrenome) values (2,"Gladson","Simões");
INSERT INTO pessoa (pessoaid, pessoaNome, pessoaSobrenome) values (3,"Juan","Novaes");

-- Vizualizando conteúdo pessoas
SELECT * FROM pessoa;

-- Deletando pessoa
DELETE FROM pessoa WHERE pessoaid = 3;

-- Vizualizando conteúdo pessoas
SELECT * FROM pessoa;

-- Alterando Tabela e acrescentando atributo apelido
ALTER TABLE pessoa add apelido varchar(255);

-- Vizualizando conteúdo pessoas
SELECT * FROM pessoa;

-- Inserindo pessoa com novos atributos
INSERT INTO pessoa (pessoaid, pessoaNome, pessoaSobrenome, apelido) values (4,"Luan","NV", "amigo");

-- Deletando atributo criado
ALTER TABLE pessoa drop apelido ;

-- Alterando usuário Ramon através do id 1
UPDATE pessoa SET pessoaNome = "Marcos" WHERE pessoaid = 1;

-- Criando tabela função
create table funcao (funcID int, funcao varchar(255));
INSERT INTO funcao (funcID, funcao) VALUES (1,"BACKEND");
INSERT INTO funcao (funcID, funcao) VALUES (2,"FRONTEND");

-- Selecionando ela
select * from funcao;

-- Alterando tabela
alter table pessoa add funcID varchar(255);

UPDATE pessoa SET funcID = 1 WHERE pessoaid = 1;
UPDATE pessoa SET funcID = 3 WHERE pessoaid = 1;
UPDATE pessoa SET funcID = 2 WHERE pessoaid = 2;

select pessoa.pessoaNome, funcao.funcao from pessoa join funcao on pessoa.funcID = funcao.funcID;
~~~


//Normalização

~~~mysql
create database normalizacao;

use normalizacao;

create table project (projectid int not null auto_increment primary key, projectcode varchar(255), projectname varchar(255), projetmanager varchar(255), projectbudget int);

INSERT INTO project (projectid, projectcode, projectname, projetmanager, projectbudget) values (1, "PC010","Reservation System","Mr ajay", 120500);
INSERT INTO project (projectid, projectcode, projectname, projetmanager, projectbudget) values (2, "PC011","HR System","Mrs. Charu", 500500);
INSERT INTO project (projectid, projectcode, projectname, projetmanager, projectbudget) values (3, "PC012","Attendance System","Mr Rajesh", 710700);

select * from project;

create table employee (employeeid int not null auto_increment primary key, employeeno int, employeename varchar(255), hourlyrate float);

insert into employee (employeeid, employeeno, employeename, hourlyrate) values (4, 100,"Mohan", 21.00);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (5, 101,"Vipul", 16.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (6, 102,"Riyaz", 22.00);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (7, 103,"Pavan", 18.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (8, 104,"Jitendra", 17.00);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (8, 315,"Pooja", 23.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (10, 137,"Rahul", 21.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (11, 218,"Avneesh", 15.50);
insert into employee (employeeid, employeeno, employeename) values (12, 109,"Vikas", 20.50);

select * from employee;

create table departament (departamentid int not null auto_increment primary key, departamentno varchar(3), dapartamentname varchar(255));

insert into departament (departamentid, departamentno, dapartamentname) values (13, "D01", "IT");
insert into departament (departamentid, departamentno, dapartamentname) values (14, "D02", "Testing");
insert into departament (departamentid, departamentno, dapartamentname) values (15, "D03", "Database");

select * from departament;
~~~

//atividade 09/11 normalização

~~~mysql
create database normalizacao;

use normalizacao;

create table project (projectid int not null auto_increment primary key, projectcode varchar(255), projectname varchar(255), projetmanager varchar(255), projectbudget int);

INSERT INTO project (projectid, projectcode, projectname, projetmanager, projectbudget) values (1, "PC010","Reservation System","Mr ajay", 120500);
INSERT INTO project (projectid, projectcode, projectname, projetmanager, projectbudget) values (2, "PC011","HR System","Mrs. Charu", 500500);
INSERT INTO project (projectid, projectcode, projectname, projetmanager, projectbudget) values (3, "PC012","Attendance System","Mr Rajesh", 710700);

select * from project;

create table employee (employeeid int not null auto_increment primary key, employeeno int, employeename varchar(255), hourlyrate float);

insert into employee (employeeid, employeeno, employeename, hourlyrate) values (4, 100,"Mohan", 21.00);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (5, 101,"Vipul", 16.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (6, 102,"Riyaz", 22.00);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (7, 103,"Pavan", 18.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (8, 104,"Jitendra", 17.00);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (8, 315,"Pooja", 23.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (10, 137,"Rahul", 21.50);
insert into employee (employeeid, employeeno, employeename, hourlyrate) values (11, 218,"Avneesh", 15.50);
insert into employee (employeeid, employeeno, employeename) values (12, 109,"Vikas", 20.50);

select * from employee;

create table departament (departamentid int not null auto_increment primary key, departamentno varchar(3), dapartamentname varchar(255));

insert into departament (departamentid, departamentno, dapartamentname) values (13, "D01", "IT");
insert into departament (departamentid, departamentno, dapartamentname) values (14, "D02", "Testing");
insert into departament (departamentid, departamentno, dapartamentname) values (15, "D03", "Database");

select * from departament;
~~~




