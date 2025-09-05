use avalicao;
-- SELECT DATABASE(); deixa o banco direcionado ao dev
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
SELECT * FROM cidades;
-- Arrumando a tabela fornecedores 
alter table fornecedores add fone varchar(14) not null;
alter table fornecedores modify cidade int not null;
-- Outra forma de adicionar Chaves estrangeiras para aplicações com dados ja existentes
-- ALTER TABLE fornecedores add constraint fk_ccod_fornecedor foreign key (Ccod) references cidades (Ccod);
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


-- Inserindo dados
INSERT INTO cidades (cnome,cuf) VALUES ('Cosmópolis','SP');
INSERT INTO cidades (cnome,cuf) VALUES ('Limeira','SP');
INSERT INTO cidades (cnome,cuf) VALUES ('Arthur Nogueira','SP');
INSERT INTO cidades (cnome,cuf) VALUES ('Xique-Xique','BA');
INSERT INTO cidades (cnome,cuf) VALUES ('Gramado','RS');
-- Inserindo dados na tabela pecas
INSERT INTO pecas (pnome,cidade,cor,peso) VALUES ('Motor V6',3,'Vermelho',400.55);
INSERT INTO pecas (pnome,cidade,cor,peso) VALUES ('Engrenagens',1,'Prateado',250.70);
-- Inserindo dados na tabela fornecedores
INSERT INTO fornecedores (fnome,fstatus,cidade,fone) VALUES ("Victor Hugo Camargo","Ativo",1,"(19)98444-xxxx");
INSERT INTO fornecedores (fnome,fstatus,cidade,fone) VALUES ("Henrique Rodrigues Motta","Ativo",3,"(19)99991-xxxx");

-- Inserindo dados na tabela projetos
INSERT INTO projetos (prnome,cidade) VALUES ("Área Verde",5);
INSERT INTO projetos (prnome,cidade) VALUES ("Aguaplanagem",3);

-- Inserindo dados na tabela fornecimento
INSERT INTO fornecimento (quantidade,fcodigo,pcodigo,prcod) VALUES (21,2,1,2);
INSERT INTO fornecimento (quantidade,fcodigo,pcodigo,prcod) VALUES (10,1,1,1);

-- Verifica qual foi o ultimo ID adicionado
select LAST_INSERT_ID();