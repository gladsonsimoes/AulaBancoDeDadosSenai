create database escola;
use escola;

create table Aluno (
AlunoId INT(5),
nome varchar(25), 
numeroMatricula int(55),
CPF_Aluno varchar(55),
rua varchar(100),
cidade varchar(20),
CEP int(8),
telefones int(50),
datadenascimento date,
sexo varchar(1),
departamento varchar(100),
curso varchar(200),
primary key (AlunoId)
);

create table Departamento (
DepartamentoId INT(5),
 nomeDepartamento varchar(150),
 código varchar(50),
 telefone varchar(50),
 centro varchar(55),
 primary key (DepartamentoId)
 );
 
create table Curso (
 nomeCurso varchar(150), 
 nivel varchar(50),
 departamento varchar(50),
 coordenador varchar(50),
 vice_coordenador varchar(50)
 );
 
create table Professor (
nomeProfessor varchar(255),
CPF_Professor varchar(55),
Departamento varchar(55),
TelefoneProfessor int(100)
 );
 
create table Disciplina (
nomeDisiplina varchar(50),
descricao varchar(55),
codigo varchar(50),
numeroDeCreditos int(50),
departamentoDeOferta varchar(55)
);
 
create table OfertaDisciplina (
professor varchar(55), 
horario time
);






