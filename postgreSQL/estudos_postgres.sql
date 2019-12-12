/*
    Estudos dirigidos para o uso do SGBD PostgreSQL
*/


/*Removendo coluna*/
ALTER TABLE /*nome da tabela*/ DROP COLUMN /*nome da coluna*/

/*Renomeando Coluna*/
ALTER TABLE /*nome da tabela*/ RENAME COLUMN /*nome da coluna*/ TO /*novo nome da coluna*/

/*Atualizando valores de uma determinada tabela*/
UPDATE /*nome da tabela*/
SET /*nome da coluna*/ = /*valor a ser inserido*/
WHERE COD_REF = **codigo**; /*ao atualizar um valor, o ideal é que se basei em um código atomico como chaves primarias*/

/*Renomear Tabela*/
ALTER TABLE /*nome da tabela*/ RENAME TO /*novo nome da tabela*/

/*Alterar o tipo da coluna*/
ALTER TABLE /*nome da tabela*/ ALTER COLUMN /*nome da coluna*/ type /*tipo do dado*/

/*Criando Tabela*/
CREATE TABLE /*nome da tabela*/ (
 /*nome da coluna*/ integer CONSTRAINT pk_/*nome da coluna*/ PRIMARY KEY,
 /*nome da coluna*/ varchar(30) NOT NULL,
 /*nome da coluna*/ varchar(40) NOT NULL,
 /*nome da coluna*/ date
);

/*Excluindo tabela*/
DROP TABLE /*nome da tabela*/

/*Criando Tabela com base em outra*/
create table /*nome da tabela*/ as (select * from /*nome da tabela*/)

/*Visualizando os schemas presentes no banco Postgresql*/
select * from pg_tables where schemaname = /*nome no schema*/

/*subquery usando distinct (utilizado para etornar apenas valores distintos, dentro de uma coluna onde contem muitos valores duplicados)*/
select * from /*nome da tabela*/
where /*nome da coluna*/ = (select distinct /*nome da coluna*/ from /*nome da tabela*/)
order by /*nome da coluna*/ desc;

/*LIKE para encontrar um determinado valor dentro de uma coluna*/
select * from /*nome da tabela*/
where /*nome da coluna*/ like 'valor%'
order by /*nome da coluna*/ asc;

/*Criando usuário*/
create user /*nome do usuario*/ superuser inherit createdb createrole

/*Alterando senha*/
alter user /*nome do usuario*/ password /*'password'*/

/*Renomeando usuário*/
alter user /*nome do usuario*/ rename to /*nome do usuario*/

/*Visualizar usuarios do SGBD*/
select * from pg_user