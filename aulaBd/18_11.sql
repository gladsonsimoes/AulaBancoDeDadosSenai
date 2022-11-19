create database 18_11;
use 18_11;

create table funcionario (
      id_func INT PRIMARY KEY auto_increment,
      nome_func varchar (30) not null, -- o funcionario não pode ser nulo
      sobrenome_func varchar (50) not null -- o sobrenome não pode ser nulo
);      

describe funcionario;

insert into funcionario(nome_func, sobrenome_func) -- não precisa colocar o id no insert automaticamente 
values ("José","Silva");

insert into funcionario(nome_func, sobrenome_func)
values ("Ramon","Nascimento");

select * from funcionario;

create table departamento(
   id_dep int primary key auto_increment,
   nome_dep varchar(30)
);

describe departamento;

insert into departamento (nome_dep) values ("Financeiro");
insert into departamento (nome_dep) values ("RH");

select * from departamento;

create table fornecedor(
    id_forn int,
    nome_forn varchar(30)
);

describe fornecedor;

alter table fornecedor add primary key (id_forn);
alter table fornecedor modify nome_forn varchar(30) not null;
alter table fornecedor modify id_forn int auto_increment;

insert into fornecedor (nome_forn) values ("Material de Construção");
insert into fornecedor (nome_forn) values ("SuperMercado");

select * from fornecedor;

create table venda(
    id_produto int,
    id_cliente int,
    qtd int,
    constraint primary key (id_produto, id_cliente)
);
/* update fornecedor set nome_forn = "Internet" where id_forn = 1; */
describe venda;

insert into venda (id_produto, id_cliente) value (1,1); -- inserindo o produto para o cliente
insert into venda (id_produto, id_cliente) value (1,2); -- inserindo outro cliente para o mesmo produto
insert into venda (id_produto, id_cliente) value (1,1); -- neste caso vai dá erro pois já existe no produto e o cliente
insert into venda (id_produto, id_cliente) value (2,2); -- inserindo outro produto para o cliente 2

alter table funcionario add column id_dep int; -- colocando uma coluna na tabela funcionario

alter table funcionario add constraint fk_dep foreign key (id_dep) 
references departamento (id_dep); -- adicionando uma nova regra para que não possa colocar informações de id_dep diferente 

insert into funcionario (nome_func, sobrenome_func, id_dep)
 values ("Roberto", "Rodrigues", 3);
 
 insert into funcionario (nome_func, sobrenome_func, id_dep)
 values ("Roberto", "Rodrigses", 2);
 
 update funcionario set id_dep = 1 where id_func = 1;
 

