create database db_curso_glaucia;
use db_curso_glaucia;
create table tb_cursos (
      id_curso int not null,
      imagem_curso varchar(20) not null,
      nome_curso varchar(50) not null,
      resumo text null,
      data_cadastro datetime not null,
      ativo boolean DEFAULT true,
      investimento float(8,2) DEFAULT 0
    );

rename table tb_cursos to tb_cursos_senai;

alter table tb_cursos_senai add carga_horaria varchar(5) not null;

alter table tb_cursos_senai change carga_horarias carga_horaria int(5); -- sempre informar o atributo quando for alterar a coluna da tabela

alter table tb_cursos_senai drop carga_horaria;

alter table tb_cursos_senai drop carga_horaria;

alter table tb_cursos_senai ADD carga_horaria INT(5) NULL;

INSERT into tb_cursos_senai (
    id_curso,
    imagem_curso,
    nome_Curso,
    resumo,
    data_cadastro,
    ativo,
    investimento,
    carga_horaria
)
    
values (
        1,
        "img/logo.png",
        "HTML",
         null,
        "2022-11-30 19:53:20",
        true,
        0,
        100
);

INSERT into tb_cursos_senai (
    id_curso,
    imagem_curso,
    nome_Curso,
    resumo,
    data_cadastro,
    ativo,
    investimento,
    carga_horaria
)
    
values (
        2,
        "img/css.png",
        "CSS",
         null,
        "2022-11-30 19:57:20",
        true,
        0,
        80
);


INSERT into tb_cursos_senai (
    id_curso,
    imagem_curso,
    nome_Curso,
    resumo,
    data_cadastro,
    ativo,
    investimento,
    carga_horaria
)
    
values (
        3,
        "img/js.png",
        "Javascript",
         null,
        "2022-11-30 20:00:20",
        true,
        0,
        120
);


INSERT into tb_cursos_senai (
    id_curso,
    imagem_curso,
    nome_Curso,
    resumo,
    data_cadastro,
    ativo,
    investimento,
    carga_horaria
)
    
values (
        4,
        "img/php.png",
        "php",
         null,
        "2022-11-30 20:28:20",
        true,
        0,
        60
);

INSERT into tb_cursos_senai (
    id_curso,
    imagem_curso,
    nome_Curso,
    resumo,
    data_cadastro,
    ativo,
    investimento,
    carga_horaria
)
    
values (
        5,
        "img/ideacao.png",
        "Ideação",
         null,
        "2022-11-30 20:29:20",
        true,
        0,
        40
);




select * from tb_cursos_senai;
