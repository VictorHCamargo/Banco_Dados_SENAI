create database pizzaria;
use pizzaria;
create table clientes (
id_cliente int primary key auto_increment,
nome_cliente varchar(100) not null,
cpf int(11),
cep int(8),
numero_telefone int(11)
);
create table funcionario (
id_funcionario int primary key auto_increment,
nome_funcionario varchar(100) not null,
cargo varchar(64) not null,
status_funcionario varchar(10),
data_entrada varchar(8),
data_saida varchar(8),
salario float
);
create table pizzas (
id_pizzas int primary key auto_increment,
nome_pizzas varchar(100) not null,
igredientes varchar(200),
valor float,
avaliacao float(2)
);