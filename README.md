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



~~~mysql
-- comentário 1
# comentário 2
/* comentário 3 */
~~~


### Sem Comentários: 

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


### Com Comentários: 



## relação entre tabelas







