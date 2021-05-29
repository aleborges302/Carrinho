/**
* Projeto 2 :Carrinho de Compra
* @author ALEXANDRE BORGES
*/

use dbalexandre;

create database dbCarrinhoComp;
use dbCarrinhoComp;

create table carrinho (
 codigo int primary key auto_increment,
 produto varchar(100) not null,
 quantidade int not null,
 valor decimal(10,2)
 
 
);

describe carrinho ;

/* Crud create*/
-- inserir um nova compra
insert into carrinho(codigo,produto,quantidade,valor)
values ('1','sabao','20','7.90');
insert into carrinho(codigo,produto,quantidade,valor)
values ('2','arroz','50','20.90');
insert into carrinho(codigo,produto,quantidade,valor)
values ('3','feijao','100','8.50');
insert into carrinho(codigo,produto,quantidade,valor)
values ('4','oleo','200','6.90');
insert into carrinho(codigo,produto,quantidade,valor)
values ('5','refrigerante','320','4.90');
insert into carrinho(codigo,produto,quantidade,valor)
values ('6','bolacha','500','2.90');

select * from carrinho;

/* CRUD update */

update carrinho set produto='biscoito', valor='12.20', quantidade='400' where codigo=6;

/* CRUD delete */
delete from carrinho where codigo=5;

-- listar o carrinho por ordem alfabetica
select * from carrinho order by produto;

-- executando operaçoes matematicas no select (inventario)
select sum(valor * quantidade) as Total from carrinho;
