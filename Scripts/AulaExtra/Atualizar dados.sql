use remoterc;

-- Atualizar salarios dos vendedores
update vendedores set salario = (salario * 1.5) where Cvend = 1;

-- Atualizar produto dos produtos 
update produtos set valorUnit = 250, descricao = "Mouse branco" where Cprod = 2;

-- Atualizar endereco dos Clientes
UPDATE CLIENTES SET endereco = "Rua branca dos Santos 254" where Ccli = 4;

-- Atualizar mais de uma informação
update clientes set 
nome = "Matheus",
endereco = "Rua das Balas",
cidade = "Rio de Janeiro",
uf = "RJ" where Ccli = 2;
select * from clientes;

-- desafio
update vendedores set salario = 3150.00 where fsalario = 1;

update vendedores set salario = (salario * 1.1) where fsalario =2;

update vendedores set salario = 3500.00 where fsalario = 3;