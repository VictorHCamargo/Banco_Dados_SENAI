use avalicao;
-- Deve ser selecionado o nome das chaves estrangeiras definidas dentro da tabela
SELECT constraint_name
FROM information_schema.key_column_usage
WHERE table_name = 'projetos';

-- Depois adicionar o nome dessa constraint_name para dropa-lá
alter table projetos drop foreign key projetos_ibfk_1;
drop table instituicoes;

-- Criando a tabela cidade 
create table cidades (
Ccod int auto_increment not null primary key,
cnome varchar(100) not null,
cuf char(2) not null
);

-- Arrumando a tabela fornecedores 
alter table fornecedores add fone varchar(14) not null;
alter table fornecedores modify cidade int not null;
alter table fornecedores add foreign key (cidade) references cidades (Ccod);
select * from fornecedores;

-- Arrumando a tabela peças
alter table pecas add peso decimal(6,2);
alter table pecas modify cidade int not null;
alter table pecas add foreign key (cidade) references cidades (Ccod);
select * from pecas;

-- Arrumando a tabela projetos
alter table projetos drop column icodigo;
alter table projetos modify cidade int not null;
alter table projetos add foreign key (cidade) references cidades (Ccod);
select * from projetos;
