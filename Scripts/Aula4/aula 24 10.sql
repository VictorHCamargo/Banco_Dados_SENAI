create database joins; 
use joins;
create table cliente (
codcli char(3) not null primary key,
nome_cliente varchar(40) not null,
endereco_cliente varchar(40) not null,
cidade varchar(20) not null,
estado char(2) not null,
cep char(9) not null
);

create table venda (
duplic char(6) not null primary key,
valor decimal(10,2) not null,
vencto date not null,
codcli char(3) not null,
foreign key (codcli) references cliente (codcli)
);
-- clientes
insert into cliente values (
'250',
'Banco Barca S/A',
'R. VITO, 34',
'São Sebastião',
'CE',
'62380-000'
);
insert into cliente values (
'820',
'Mecaninca Sao Paulo',
'R. Do Macuco,99',
'Santo Antonio',
'ES',
'29810-020'
);
insert into cliente values (
'170',
'Posto Brasil LTDA.',
'AV. Imperio ,85',
'Guagirus',
'BA',
'42837-000'
);
insert into venda values (
'230001',
1300.00,
'2001-06-10',
'170'
);
insert into venda values (
'230099',
1000.00,
'2002-10-02',
'820'
);
insert into venda values (
'997818',
3000.00,
'2001-11-11',
'250'
);
alter table cliente modify endereco_cliente varchar(50) not null;

SELECT 
v.duplic,
c.nome_cliente as nome_Cliente,
c.cidade as Cidade_cliente
from venda v 
inner join cliente c on c.codcli = v.codcli
order by c.nome_cliente
;

SELECT 
c.nome_cliente as NOME,
sum(v.valor) as valor_vendido
from cliente c 
inner join venda v on c.codcli = v.codcli
group by c.nome_cliente;
SELECT 
c.nome_cliente as NOME,
max(v.valor) as valor_maximo
from cliente c 
inner join venda v on c.codcli = v.codcli
group by c.nome_cliente;
SELECT 
c.nome_cliente as NOME,
min(v.valor) as valor_minimo
from cliente c 
inner join venda v on c.codcli = v.codcli
group by c.nome_cliente;


-- Tabela Nova para uso de inner join, left join

create table ex (
nome varchar(100)
);
create table fx (
nome varchar(100)
);
-- Inserindo 5 registros na tabela ex
INSERT INTO ex (nome) VALUES ('Ana');
INSERT INTO ex (nome) VALUES ('Bruno');
INSERT INTO ex (nome) VALUES ('Carla');
INSERT INTO ex (nome) VALUES ('Diego');
INSERT INTO ex (nome) VALUES ('Eduarda');

-- Inserindo 5 registros na tabela fx
INSERT INTO fx (nome) VALUES ('Carla');
INSERT INTO fx (nome) VALUES ('Eduarda');
INSERT INTO fx (nome) VALUES ('Felipe');
INSERT INTO fx (nome) VALUES ('Gabriel');
INSERT INTO fx (nome) VALUES ('Helena');


SELECT 
fx.nome as nome,
ex.nome as nome_duplicado
from fx inner join ex on ex.nome = fx.nome;
SELECT 
fx.nome as nome,
ex.nome as nome_duplicado
from fx left join ex on ex.nome = fx.nome
union
SELECT 
fx.nome as nome_duplicado,
ex.nome as nome
from fx right join ex on ex.nome = fx.nome;


select c.nome_cliente, v.vencto
from cliente c inner join venda v on c.codcli = v.codcli
where YEAR(v.vencto) = 2002 or month(v.vencto) = 6
order by v.vencto;

-- Atividades
-- 1)Exibir duplicatas em carteira do cliente PCTEC - MICROCOMPUTADORES S/A. Na listagem devem constar o nome do
-- cliente, número da duplicata e o valor correspondente.

select c.nome_cliente, v.duplic as numero_duplicata, v.valor 
from cliente c inner join venda v on v.codcli = c.codcli 
where c.nome_cliente = 'PCTEC - MICROCOMPUTADORES S/A.';

-- Exibir os nomes dos clientes e a data de vencimento de todas as
-- duplicatas pendentes no mês de novembro de 2004. A listagem deve
-- ser apresentada em ordem cronológica de vencimento.
SELECT c.nome_cliente, v.vencto as data_vencimento
from cliente c inner join venda v on v.codcli = c.codcli
where month(v.vencto) = 11 and year(v.vencto) = 2004
order by day(v.vencto);

-- Apresentar o nome dos clientes e todas as duplicatas que possuem
-- vencimento no mês de outubro de qualquer ano.
SELECT c.nome_cliente, v.vencto as data_vencimento
from cliente c inner join venda v on v.codcli = c.codcli
where month(v.vencto) = 10
order by day(v.vencto);

-- Consultar o nome do cliente, a quantidade de títulos em carteira por
-- cliente e o total que cada cliente deve.
SELECT c.nome_cliente, v.vencto as data_vencimento
from cliente c inner join venda v on v.codcli = c.codcli
where month(v.vencto) = 10
order by day(v.vencto);
