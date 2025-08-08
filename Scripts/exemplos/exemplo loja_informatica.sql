-- Criar Banco de dados
create database loja_informatica;

-- Utilizar Bando de dados
use loja_informatica;

create table produtos(
	cod_produto int primary key,
    descricao varchar(255),
    nome_produto varchar(100),
    preco_produto decimal,
    imagem blob
);
create table estoques (
	cod_estoque int primary key,
    local_estoque varchar(50),
    quantidade varchar(50),
    nome_produto varchar(100),
    observacao varchar(255)
);
create table funcionarios (
	cod_funcionario int primary key,
    nome_funcionario varchar(100),
    data_funcionario date,
    cpf varchar(14),
    salario decimal
);
create table servicos (
	cod_servico int primary key,
    tipo_servico varchar(50),
    agendamento varchar(255),
    valor_servico decimal,
    observacao varchar(255)
);
create table clientes (
	cod_cliente int primary key,
    nome_cliente varchar(100),
    cpf varchar(14),
    cep varchar(9),
    data_cliente date
);