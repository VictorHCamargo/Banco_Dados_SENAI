CREATE DATABASE SOLAR;
USE SOLAR;
CREATE TABLE IF NOT EXISTS clientes (
id_cliente int auto_increment not null,
nome_cliente varchar(100),
cpf varchar(14) not null,
endereco varchar(200) not null,
celular varchar(14),
primary key(id_cliente)
);
CREATE TABLE IF NOT EXISTS produtos (
cod_produto int auto_increment not null,
nome_produto varchar (100),
descricao varchar(200),
quantidade int,
valor decimal(5,2) not null,
primary key(cod_produto)
);

CREATE TABLE IF NOT EXISTS fornecedores (
id_fornecedor int auto_increment not null,
nome_fornecedor varchar(100),
estado char(2) default 'SP',
CNPJ varchar(18) not null,
celular varchar(14),
endereco varchar(200) not null,
cidade varchar(50),
primary key(id_fornecedor)
);

CREATE TABLE vender (
cod_venda int primary key auto_increment not null,
cod_produto int not null,
cod_fornecedor int not null,
foreign key (cod_produto) references produtos (cod_produto),
foreign key (cod_fornecedor) references fornecedores (id_fornecedor)
);
CREATE TABLE comprar (
cod_comprar int primary key auto_increment not null,
cod_produto int not null,
cod_cliente int not null,
foreign key (cod_produto) references produtos (cod_produto),
foreign key (cod_cliente) references clientes (id_cliente)
);

use solar;

CREATE TABLE departamentos (
cod_departamento int auto_increment not null,
nome_departamento varchar(100) not null,
setor varchar(50) not null,
endereco varchar(100) not null,
faturamento decimal(9,2) not null,
primary key (cod_departamento)
);
CREATE TABLE funcionarios (
id_funcionario int auto_increment not null,
nome_funcionario varchar(100),
cpf varchar(14) not null,
endereco varchar(200) not null,
celular varchar(14),
salario decimal(5,2),
cargo varchar(100) not null,
cod_departamento int not null,
primary key (id_funcionario),
foreign key (cod_departamento) references departamentos (cod_departamento)
);
-- Consultar Tabela Funcionários
SELECT * FROM empregados;
-- Alterações em Tabelas
-- Adicionar coluna
alter table funcionarios add sexo char(1);
-- Remover coluna
alter table funcionarios drop column sexo;
-- Renomear tabela
alter table empregado rename to empregados;
-- Renomear coluna
alter table empregado change cpf cic_funcionario varchar(18);
-- Trocar tamanho de dados
alter table empregados modify column nome_funcionario varchar(200);

alter table fornecedores modify column estado char(2) default 'MG';

alter table empregados add primary key (cic_funcionario);
