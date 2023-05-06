
~~~mysql
create database db_curso_gladson;
~~~

~~~mysql
create table tb_cursos (
      id_curso int not null,
      imagem_curso varchar(20) not null,
      nome_curso varchar(50) not null,
      resumo text null,
      data_cadastro datetime not null,
      ativo boolean DEFAULT true,
      investimento float(8,2) DEFAULT 0
    );
~~~~
    
~~~mysql    
rename table tb_cursos to tb_cursos_senai;
~~~

~~~mysql
alter table tb_cursos_senai add carga_horaria varchar(5) not null;
~~~

~~~mysql
alter table tb_cursos_senai change carga_horaria carga_horarias int(5); -- sempre informar o atributo quando for alterar a coluna da tabela
~~~

~~~mysql
alter table tb_cursos_senai change carga_horarias carga_horaria int(5); -- sempre informar o atributo quando for alterar a coluna da tabela
~~~

~~~mysql
alter table tb_cursos_senai drop carga_horaria;
~~~

~~~mysql
alter table tb_cursos_senai ADD carga_horaria INT(5) NULL;
~~~

~~~mysql
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
~~~

~~~mysql
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
~~~

~~~mysql
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
~~~

~~~mysql
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
~~~

~~~mysql
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
~~~

## fazendo alteração dos atributos da tabela

~~~mysql
update (a tabela que vai dar updat3) set (aqui você coloca a alteração) where (de onde que você quer alterar) 
~~~

#### exemplo: 

~~~mysql
update tb_cursos_senai set id_curso = 2 where nome_curso = "CSS"  
~~~

### como alterar ordem do banco de dados(ainda vou ver com calma!)

https://www.devmedia.com.br/forum/mysql-como-alterar-ordem-coluna/555770


### colocar a tabela em ordem 
~~~mysql
select * from tb_cursos_senai order by id_curso;
~~~

~~~mysql
select * from tb_cursos_senai order by id_curso desc;
~~~

~~~mysql
select * from tb_cursos_senai order by id_curso asc;
~~~

