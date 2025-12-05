CREATE DATABASE oficinaMecanica;
use oficinaMecanica;


CREATE TABLE clientes (
cep_cliente varchar(9),
id_cliente int not null auto_increment PRIMARY KEY,
nome_cliente varchar(128),
cpf_cliente varchar(11),
contato_cliente varchar(128)
);

CREATE TABLE veiculos (
marca_veiculo varchar(64),
modelo_veiculo varchar(128),
descricao_veiculo varchar(256),
placa_veiculo varchar(8) not null,
id_veiculo int not null auto_increment PRIMARY KEY,
id_cliente int not null,
constraint fk_cliente foreign key (id_cliente) references clientes (id_cliente)
);

CREATE TABLE funcionarios (
id_funcionario int not null auto_increment PRIMARY KEY,
nome_funcionario varchar(128),
salario_funcionario decimal(7,2),
data_entrada date,
tipo_funcionario varchar(64),
cpf_funcionario varchar(11),
cep_funcionario varchar(9)
);

CREATE TABLE estoque (
id_peca int not null auto_increment PRIMARY KEY,
quantidade_estoque int,
nome_peca varchar(128),
descricao_peca varchar(256),
valor_peca decimal(4,2),
local_estoque varchar(10)
);

CREATE TABLE servicos (
descricao_servico varchar(256),
nome_servico varchar(128),
valor_servico decimal(7,2),
tipo_servico varchar(64),
id_servico int not null auto_increment PRIMARY KEY,
data_servico date
);

CREATE TABLE requisitar (
id_servico int not null ,
id_peca int not null ,
constraint fk_servico FOREIGN KEY(id_servico) REFERENCES servicos (id_servico),
constraint fk_peca FOREIGN KEY(id_peca) REFERENCES estoque (id_peca)
);

CREATE TABLE ordem_servico (
id_veiculo int not null ,
id_servico int not null ,
constraint fk_veiculo FOREIGN KEY(id_veiculo) REFERENCES veiculos (id_veiculo),
constraint fk_servico_OS FOREIGN KEY(id_servico) REFERENCES servicos (id_servico)
);

CREATE TABLE realizam (
id_servico int not null ,
id_funcionario int not null,
constraint fk_servico_F FOREIGN KEY(id_servico) REFERENCES servicos (id_servico),
constraint fk_funcionario FOREIGN KEY(id_funcionario) REFERENCES funcionarios (id_funcionario)
);

