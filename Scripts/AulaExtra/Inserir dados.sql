use remoterc;
-- Inserindo valores dentro da tabela Produtos
insert into produtos (descricao,peso,valorUnit) values ("Teclado","KG",35.00);
insert into produtos (descricao,peso,valorUnit) values ("Mouse","Libras",400.00);
insert into produtos (descricao,peso,valorUnit) values ("Monitor","KG",1200.00);
insert into produtos (descricao,peso,valorUnit) values ("MousePad","KG",15.00);
insert into produtos (descricao,peso,valorUnit) values ("HeadSet","Libras",350.00);
select * from produtos;
-- Inserindo valores dentro da tabela Vendedores
insert into vendedores (nome,salario,fsalario) values ("Victor Hugo",3512.00,1);
insert into vendedores (nome,salario,fsalario) values ("Henrique Motta",3225.00,2);
insert into vendedores (nome,salario,fsalario) values ("Clodoaldo",4350.00,3);
insert into vendedores (nome,salario,fsalario) values ("Matheus",2435.00,1);
insert into vendedores (nome,salario,fsalario) values ("HeadSet",3255.00,2);
select * from vendedores;
-- Inserindo valores dentro da tabela clientes
insert into clientes (nome,endereco,cidade,uf) values ("Victor Hugo Camargo","Rua 1 456","Rio Claro","SP");
insert into clientes (nome,endereco,cidade,uf) values ("Henrique Rodriguez Motta","Rua Quadrada 234","Cosmópolis","SP");
insert into clientes (nome,endereco,cidade,uf) values ("Kayque","Rua dos tontos 452","Xique-Xique","BA");
-- insert into clientes (nome,endereco,cidade,uf) values ("Matheus","Rua das Balas","Rio de Janeiro","RJ");
insert into clientes (nome,endereco,cidade,uf) values ("HeadSet","Rua da Beleza","Gramado","RS");
select * from clientes;