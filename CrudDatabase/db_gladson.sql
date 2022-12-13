create database db_gladson;
use db_gladson;

CREATE TABLE ListaPessoas (
   idListaPessoas int auto_increment primary key,
   nome varchar(20),
   sobrenome varchar(20),
   cpf varchar(30),
   rg varchar (20),
   cep varchar(20),
   endereco varchar(20)
);

select * from ListaPessoas;
