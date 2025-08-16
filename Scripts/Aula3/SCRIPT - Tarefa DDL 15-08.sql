create database DDL;
use DDL;

create table clientes (
id_cliente int auto_increment not null,
nome_cliente varchar(100),
nome_produto varchar(100) not null,
descricao_produto varchar(200),
data_entrada datetime,
data_saida datetime,
cpf_cliente varchar(14) not null,
endereco varchar(200) not null,
celular varchar(14),
primary key(id_cliente,nome_produto,descricao_produto,data_entrada,data_saida)
);
create table funcionarios (
id_funcionario int auto_increment not null,
nome_funcionario varchar(100),
cpf_funcionario varchar(14) not null,
celular varchar(14),
salario decimal(7,2),
primary key (id_funcionario)
);
create table estoques (
cod_estoque int primary key auto_increment not null,
nome_produto varchar(100) not null,
data_entrada datetime,
data_saida datetime,
descricao_produto varchar(200),
funcionario_responsavel int not null,
foreign key (funcionario_responsavel) references funcionarios (id_funcionario)
);
create table reserva (
cod_reserva int primary key auto_increment not null,
cod_estoque int not null,
cod_cliente int not null,
foreign key (cod_estoque) references estoques (cod_estoque),
foreign key (cod_cliente) references clientes (id_cliente)
);
