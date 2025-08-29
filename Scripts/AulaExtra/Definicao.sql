create database remoterc;
use remoterc;
-- Tabela Produtos
create table produtos (
Cprod int auto_increment not null primary key,
descricao varchar(100),
peso varchar(10),
valorUnit decimal(7,2)
);
-- Tabela Vendedores
create table vendedores (
Cvend int auto_increment not null primary key,
nome varchar(100),
salario decimal(7,2),
fsalario int not null
);
-- Tabela Clientes
create table clientes (
Ccli int auto_increment not null primary key,
nome varchar(100) not null,
endereco varchar(100) not null,
cidade varchar(50) not null,
uf char(2)
);