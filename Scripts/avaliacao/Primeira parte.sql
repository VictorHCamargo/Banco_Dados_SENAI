CREATE DATABASE avalicao;
use avalicao;

create table fornecedores (
fcodigo int auto_increment not null primary key,
fnome varchar(100),
fstatus varchar(20) default("ativo"),
cidade varchar(100) not null
);
create table instituicoes (
icodigo int auto_increment not null primary key,
nome varchar(100)
);
create table projetos (
prcod int auto_increment not null primary key,
prnome varchar(100),
cidade varchar(100) not null,
icodigo int not null,
foreign key (icodigo) references instituicoes (icodigo)
);
create table pecas (
pcodigo int auto_increment not null primary key,
pnome varchar(100) not null,
cidade varchar(100) not null,
cor varchar(40) not null
);
create table fornecimento (
quantidade int not null primary key,
fcodigo int not null,
pcodigo int not null,
prcod int not null,
foreign key (fcodigo) references fornecedores (fcodigo),
foreign key (pcodigo) references pecas (pcodigo),
foreign key (prcod) references projetos (prcod)
);
-- INDEXES

CREATE INDEX idx_pecas on pecas(pcodigo);
SHOW INDEX FROM pecas;