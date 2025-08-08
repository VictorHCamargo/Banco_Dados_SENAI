-- Criar Banco de dados
create database loja_limpeza;

-- Utilizar Bando de dados
use loja_limpeza;

create table produtos(
	code_produto int primary key,
    nome_produto varchar(100),
    preco_produto decimal,
    data_validade datetime,
    data_fabricao datetime
);
create table manutencoes (
	code_manutencao int primary key,
    nome_manutencao varchar(100),
    tipo_manutencao varchar(50),
    data_manutencao date,
    duracao time,
    observacao varchar(255)
);
create table funcionarios (
	code_funcionario int primary key,
    nome_funcionario varchar(100),
    cargo varchar(100),
    cpf varchar(14),
    salario decimal
);
create table servicos (
	code_servico int primary key,
    nome_servico varchar(50),
    valor_servico decimal,
    funcionario_responsavel varchar(100),
    agendamento datetime,
    observacao varchar(255)
);
create table clientes (
	code_cliente int primary key,
    nome_cliente varchar(100),
    data_nascimento date,
    cpf varchar(14),
    cep varchar(9)
);
create table vendas (
	code_venda int primary key,
    nome_cliente varchar(100),
    quantidade_produto int,
    valor_venda decimal,
    observacoes varchar(255)
);
create table estoques (
	code_estoque int primary key,
    nome_produto varchar(100),
    quantidade int,
    valor_total decimal,
    observacoes varchar(255)
);