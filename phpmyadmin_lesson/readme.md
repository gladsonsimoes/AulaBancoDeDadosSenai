~~~sql
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
    
~~~sql    
rename table tb_cursos to tb_cursos_senai;
~~~

~~~sql
alter table tb_cursos_senai add carga_horaria varchar(5) not null;
~~~

~~~sql
alter table tb_cursos_senai change carga_horaria carga_horarias int(5); -- sempre informar o atributo 
~~~

~~~sql
alter table tb_cursos_senai change carga_horarias carga_horaria int(5); -- sempre informar o atributo 
~~~

~~~sql
alter table tb_cursos_senai drop carga_horaria;
~~~
