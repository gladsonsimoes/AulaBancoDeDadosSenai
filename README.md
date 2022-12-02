# 1 - Aula Banco de dados
 <div align="center">
   <a href="https://github.com/gladsonsimoes/AulaBancoDeDadosSenai/blob/main/imagensReferencias/imagens.md"> imagens para referencia </a> | 
   <a href="https://github.com/gladsonsimoes/BD_MySQL/blob/main/ScriptComAnota%C3%A7%C3%A3o.md"> SriptComAnotação </a>
 </div>
 
<br>
<div>
   <h1> MYSQL <img 
    align="right"
    width="50px" 
    src="https://user-images.githubusercontent.com/99969693/202800806-e9f72f86-3528-4824-9a63-3788cad38ecf.png"></h1>
    
</div>


## Adicionar Comentário
~~~mysql
-- comentário 1
# comentário 2
/* comentário 3 */
~~~

### Criar Banco de Dados

~~~mysql
create database nomeDoBancoDeDados;
~~~

### Acessar o banco de dados, para criar coisas dentro

~~~mysql
use nomeDoBancoDeDados;
~~~

### Criar Tabela e adicionar atributos

~~~mysql
CREATE TABLE nomeDaTabela (
   nomeDoAtributo varchar(20)
);
~~~

### deixar o atributo não receber nulo

~~~mysql
create table funcionario (
      nome_func varchar (30) not null, -- o funcionario não pode ser nulo
      sobrenome_func varchar (50) not null -- o sobrenome não pode ser nulo
);  
~~~

### Inserir valores na tabela

~~~mysql
INSERT INTO nomeDaTabela (nomeDoAtributo) values ("valorDoAtributo");
~~~

### Colocar chave primária em uma tabela 

~~~mysql
create table exemplo (
  id_exemplo int auto_increment primary key
);
~~~

### 

~~~mysql
alter table uc add constraint fk_curso foreign key (id_curso)
references curso (id_curso); 
~~~





https://www.devmedia.com.br/sql-aprenda-a-utilizar-a-chave-primaria-e-a-chave-estrangeira/37636


https://imasters.com.br/banco-de-dados/chave-primaria-nao-e-opcional#:~:text=Independente%20do%20cargo%20que%20voc%C3%AA,modelo%20de%20banco%20de%20dados.

