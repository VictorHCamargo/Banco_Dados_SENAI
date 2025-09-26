create database formativa;
use formativa;


create table livros(
codigo_livro int not null auto_increment,
titulo varchar(100) not null,
cod_autor int not null,
cod_editora int not null,
genero varchar(100),
preco decimal(7,2),
quantidade int,
primary key(codigo_livro),
foreign key (cod_autor) references autores (codigo_autor),
foreign key (cod_editora) references editoras (codigo_editora)
);
create table autores(
codigo_autor int not null auto_increment,
nome_autor varchar(100) not null,
nacionalidade varchar(64) default "Brasileiro",
data_nascimento_autor date,
primary key(codigo_autor)
);
create table editoras(
codigo_editora int not null auto_increment,
nome_editora varchar(100) not null,
endereco varchar(200),
contato varchar(100),
telefone varchar(14),
cidade varchar(64) default "Limeira",
cnpj varchar(14) not null,
primary key(codigo_editora)
);

create table clientes(
codigo_cliente int not null auto_increment,
nome_cliente varchar(100) not null,
cpf varchar(14) not null,
email varchar(100),
telefone varchar(14),
data_nascimento_cliente date,
primary key(codigo_cliente)
);

create table vendas(
codigo_venda int not null auto_increment primary key,
data_venda date,
nome_cliente_vendido varchar(100),
titulo_vendido varchar(100),
quantidade int,
valor_total decimal(7,2),
foreign key (titulo_vendido) references livros (titulo)
);
ALTER TABLE livros change autor cod_autor int not null;
ALTER TABLE livros add foreign key (cod_autor) references autores (codigo_autor);
ALTER TABLE livros change editora cod_editora int not null;
ALTER TABLE livros add foreign key (cod_editora) references editoras (codigo_editora);

ALTER TABLE vendas change nome_cliente_vendido cod_cliente int not null;
ALTER TABLE vendas add foreign key (cod_cliente) references clientes (codigo_cliente);
ALTER TABLE vendas change titulo_vendido cod_livro_titulo int not null;
ALTER TABLE vendas add foreign key (cod_livro_titulo) references livros (codigo_livro);

INSERT INTO autores (nome_autor, nacionalidade, data_nascimento_autor) VALUES
('Machado de Assis', 'Brasileiro', '1839-06-21'),
('Clarice Lispector', 'Brasileira', '1920-12-10'),
('Carlos Drummond de Andrade', 'Brasileiro', '1902-10-31'),
('Jorge Amado', 'Brasileiro', '1912-08-10'),
('Graciliano Ramos', 'Brasileiro', '1892-10-27'),
('Érico Veríssimo', 'Brasileiro', '1905-12-17'),
('João Guimarães Rosa', 'Brasileiro', '1908-06-27'),
('José de Alencar', 'Brasileiro', '1829-05-01'),
('Monteiro Lobato', 'Brasileiro', '1882-04-18'),
('Cecília Meireles', 'Brasileira', '1901-11-07');
SELECT * FROM autores;

INSERT INTO clientes (nome_cliente, cpf, email, telefone, data_nascimento_cliente) VALUES
('Ana Silva', '11111111111', 'ana.silva@email.com', '19999990001', '1990-01-15'),
('Bruno Costa', '22222222222', 'bruno.costa@email.com', '19999990002', '1985-03-22'),
('Carla Oliveira', '33333333333', 'carla.oliveira@email.com', '19999990003', '1992-07-09'),
('Diego Santos', '44444444444', 'diego.santos@email.com', '19999990004', '1988-12-01'),
('Elisa Mendes', '55555555555', 'elisa.mendes@email.com', '19999990005', '1995-05-19'),
('Fernando Lima', '66666666666', 'fernando.lima@email.com', '19999990006', '1983-09-30'),
('Gabriela Rocha', '77777777777', 'gabriela.rocha@email.com', '19999990007', '1998-11-11'),
('Henrique Dias', '88888888888', 'henrique.dias@email.com', '19999990008', '1991-02-25'),
('Isabela Martins', '99999999999', 'isabela.martins@email.com', '19999990009', '1987-08-14'),
('João Pereira', '10101010101', 'joao.pereira@email.com', '19999990010', '1993-04-07');
SELECT * FROM clientes;

INSERT INTO editoras (nome_editora, endereco, contato, telefone, cidade, cnpj) VALUES
('Editora Alpha', 'Rua das Flores, 123', 'João Silva', '19999990001', 'Limeira', '12345678000101'),
('Editora Beta', 'Av. Paulista, 456', 'Maria Souza', '19999990002', 'São Paulo', '12345678000102'),
('Editora Gama', 'Rua do Sol, 789', 'Carlos Lima', '19999990003', 'Campinas', '12345678000103'),
('Editora Delta', 'Av. Brasil, 321', 'Ana Paula', '19999990004', 'Limeira', '12345678000104'),
('Editora Épsilon', 'Rua das Palmeiras, 654', 'Paulo Mendes', '19999990005', 'Limeira', '12345678000105'),
('Editora Zeta', 'Rua Azul, 987', 'Carla Rodrigues', '19999990006', 'Rio Claro', '12345678000106'),
('Editora Eta', 'Av. Santos Dumont, 741', 'Roberto Alves', '19999990007', 'Limeira', '12345678000107'),
('Editora Teta', 'Rua XV de Novembro, 852', 'Luciana Costa', '19999990008', 'Piracicaba', '12345678000108'),
('Editora Iota', 'Rua Verde, 963', 'Renato Souza', '19999990009', 'Limeira', '12345678000109'),
('Editora Kappa', 'Av. Independência, 159', 'Fernanda Silva', '19999990010', 'Campinas', '12345678000110');
SELECT * FROM editoras;

INSERT INTO livros (titulo, cod_autor, cod_editora, genero, preco, quantidade) VALUES
('Dom Casmurro', 1, 1, 'Romance', 39.90, 10),
('A Hora da Estrela', 2, 2, 'Romance', 29.90, 15),
('Alguma Poesia', 3, 3, 'Poesia', 24.50, 20),
('Capitães da Areia', 4, 4, 'Romance', 34.90, 12),
('Vidas Secas', 5, 5, 'Romance', 32.00, 8),
('O Tempo e o Vento', 6, 6, 'Romance Histórico', 49.90, 7),
('Grande Sertão: Veredas', 7, 7, 'Romance', 59.90, 5),
('Senhora', 8, 8, 'Romance', 27.50, 9),
('Reinações de Narizinho', 9, 9, 'Infantil', 22.90, 14),
('Viagem', 10, 10, 'Poesia', 26.00, 11);
SELECT * FROM livros;

INSERT INTO vendas (data_venda, cod_cliente, cod_livro_titulo, quantidade, valor_total) VALUES
('2025-09-01', 1, 1, 1, 39.90),
('2025-09-02', 2, 2, 2, 59.80),
('2025-09-03', 3, 3, 1, 24.50),
('2025-09-04', 4, 4, 3, 104.70),
('2025-09-05', 5, 5, 2, 64.00),
('2025-09-06', 6, 6, 1, 49.90),
('2025-09-07', 7, 7, 1, 59.90),
('2025-09-08', 8, 8, 2, 55.00),
('2025-09-09', 9, 9, 1, 22.90),
('2025-09-10', 10, 10, 3, 78.00);
ALTER TABLE livros add ano int;
SELECT * FROM vendas;
-- Consultas 
-- todos os valores

select * from livros;
select titulo,ano from livros;

-- consultas por titulo, ano e publicação > 2015
select titulo,ano
from livros
where ano > 2015;

-- consultas por titulo e ano em ordem decrescente
select titulo,ano
from livros
order by ano desc;

-- limitar consultas por valor de quantidade apresentadas 
select titulo from livros
limit 5;

-- renomear colunas com as
select titulo as nome, ano as ano_publicacao
from livros;

-- consultas agregadas 
SELECT count(*) as total_livros from livros;

-- consultas com joins
select livros.titulo,autores.nome_autor from livros join autores on livros.cod_autor = autores.codigo_autor;

-- consulta por agrupamentos group by
select titulo, count(*) as quantidade
from livros
group by titulo;