create database comparador;

use comparador;
-- este dever poderia ser um tema do tcc

create table curso (
  id_curso int auto_increment primary key, 
  nome_curso varchar(255)
);

describe curso; -- descrever uma tabela

insert into curso (nome_curso)
 values ("TÉCNICO EM DESENVOLVIMENTO DE SISTEMAS - 2021");

insert into curso (nome_curso) 
values ("TÉCNICO EM DESENVOLVIMENTO DE SISTEMAS - 2020");

select * from curso;

create table uc (
	id_uc int primary key auto_increment,
    id_curso int not null,
    nome_uc varchar(100) not null,
    modulo varchar(20),
    ch int
);

describe uc; 

alter table uc add constraint fk_curso foreign key (id_curso)
references curso (id_curso); -- alterando a tabela uc e colocando uma regra para a tabela uc do id_curso

insert into uc (id_curso, nome_uc) values 
(1,"Introdução à Tecnologia da Informação e Comunicação");

insert into uc (id_curso, nome_uc) values 
(1,"Introdução ao Desenvolvimento de Projetos");

insert into uc (id_curso, nome_uc) values (1,"Introdução a Qualidade e Produtividade");

select * from uc;
