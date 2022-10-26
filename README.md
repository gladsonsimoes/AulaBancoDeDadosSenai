# 1 - Aula Banco de dados

<h1 align="center"> MYSQL </h1>


![image](https://user-images.githubusercontent.com/99969693/198150144-2fb6d715-9c97-43a3-afea-d7604a05224a.png)

<hr>
Sem Comentários:

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
Com Comentários:

~~~mysql
create database senai; /* criando um banco de dados (use Crtl + Enter em cada linha) */
use senai; 
CREATE TABLE pessoas (pessoaid int, pessoaNome varchar(255), pessoaSobrenome varchar(255)); /* criando uma tabela pessoas e seus atributos */
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (1,"Ramon","Nascimento"); /* inserindo na tabela pessoas a pessoa Ramon e seus atributos */
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (2,"Gladson","Simões"); 
INSERT INTO pessoas (pessoaid, pessoaNome, pessoaSobrenome) values (3,"Juan","Novais");
SELECT * FROM pessoas; /* o Select é para mostrar os atributos selecionados da tabela , no caso aqui é selecionado o ( * ) que é para mostrar todos os atributos da tabela */
SELECT * FROM pessoas WHERE pessoaid = 1; /* WHERE é para colocar o parametro do atributo, e encontrar todos os dados de acordo na tabela */
~~~

