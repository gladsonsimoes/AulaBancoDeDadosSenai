
~~~mysql
create database db_curos_gladson;
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
