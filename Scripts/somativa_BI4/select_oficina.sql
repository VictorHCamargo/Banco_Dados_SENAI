use oficinamecanica;


ALTER TABLE ordem_servico 
ADD status_os VARCHAR(64);

ALTER TABLE ordem_servico 
ADD data_abertura DATE;

ALTER TABLE ordem_servico 
ADD data_conclusao DATE;

ALTER TABLE funcionarios 
MODIFY especialidade_funcionario VARCHAR(150);

ALTER TABLE estoque 
ADD CONSTRAINT chk_estoque_valor CHECK (valor_peca >= 0);

ALTER TABLE servicos 
ADD CONSTRAINT chk_servicos_valor CHECK (valor_servico >= 0);

CREATE INDEX idx_placa ON veiculos (placa_veiculo);

CREATE INDEX idx_os_id_veiculo ON ordem_servico (id_veiculo);
-- 1.1
select * from veiculos where marca_veiculo = 'Ford';

-- 1.2
select c.*
from clientes c
join ordens_servico os on os.id_cliente = c.id_cliente
where os.data_abertura >= CURDATE() - INTERVAL 6 MONTH;

-- 1.3
select * from mecanicos where especialidade = 'Injeção Eletrônica';

-- 1.4
select * from ordens_servico where status = 'Aguardando Peça';

-- 1.5
select * from pecas where qtd_estoque < 5;

-- 1.6
select v.*
from veiculos v
where (
    select count(*)
    from ordens_servico os
    where os.id_veiculo = v.id_veiculo
) > 1;

-- 1.7
select os.*
from ordens_servico os
join os_mecanicos osm on osm.id_os = os.id_os
where osm.id_mecanico = 3;

-- 1.8
select nome_peca, preco_venda
from pecas
where preco_custo > 200.00;

-- 2.1
update pecas
set preco_venda = preco_venda * 1.05
where fabricante = 'Bosch';

-- 2.2
update ordens_servico
set status = 'Concluída'
where id_os = 105 and status = 'Em Execução';

-- 2.3
update ordens_servico
set data_conclusao = CURDATE()
where status = 'Em Execução'
and data_abertura < CURDATE() - INTERVAL 30 DAY;

-- 2.4
update pecas
set qtd_estoque = qtd_estoque * 2
where id_peca = 20;

-- 3.1
alter table clientes add column email varchar(100);

-- 3.2
alter table mecanicos modify column especialidade varchar(150);

-- 3.3
alter table ordens_servico drop column diagnostico_entrada;

-- 3.4
alter table pecas add constraint chk_preco CHECK (preco_venda >= preco_custo);

-- 4.1
select os.id_os, c.nome_cliente, v.placa, os.data_abertura
from ordens_servico os
join clientes c on c.id_cliente = os.id_cliente
join veiculos v on v.id_veiculo = os.id_veiculo;

-- 4.2
select p.nome_peca, op.quantidade_usada
from os_pecas op
join pecas p on p.id_peca = op.id_peca
where op.id_os = 50;

-- 4.3
select m.nome_mecanico
from mecanicos m
join os_mecanicos om on om.id_mecanico = m.id_mecanico
where om.id_os = 75;

-- 4.4
select v.placa, v.modelo, c.nome_cliente
from veiculos v
join clientes c on c.id_cliente = v.id_cliente;

-- 5.1
select v.placa, v.modelo
from veiculos v
join ordens_servico os on os.id_veiculo = v.id_veiculo
where os.status = 'Em Execução';

-- 5.2
select distinct c.nome_cliente
from clientes c
join veiculos v on v.id_cliente = c.id_cliente
where v.marca_veiculo = 'Volkswagen';

-- 5.3
select distinct m.nome_mecanico
from mecanicos m
join os_mecanicos om on om.id_mecanico = m.id_mecanico;

-- 5.4
select distinct s.nome_servico
from servicos s
join os_servicos osr on osr.id_servico = s.id_servico;

-- 6.1
select c.id_cliente, c.nome_cliente, os.id_os
from clientes c
left join ordens_servico os on os.id_cliente = c.id_cliente
order by c.id_cliente;

-- 6.2
select m.id_mecanico, m.nome_mecanico, count(om.id_os) as total_os
from mecanicos m
left join os_mecanicos om on om.id_mecanico = m.id_mecanico
group by m.id_mecanico, m.nome_mecanico;

-- 6.3
select p.id_peca, p.nome_peca, coalesce(sum(op.quantidade_usada),0) as total_vendida
from pecas p
left join os_pecas op on op.id_peca = p.id_peca
group by p.id_peca, p.nome_peca;

-- 6.4
select v.id_veiculo, v.placa, max(os.data_abertura) as ultima_os
from veiculos v
left join ordens_servico os on os.id_veiculo = v.id_veiculo
group by v.id_veiculo, v.placa;

-- 7.1
select os.*, c.nome_cliente
from ordens_servico os
right join clientes c on os.id_cliente = c.id_cliente;

-- 7.2
select s.id_servico, s.nome_servico, osr.id_os
from servicos s
right join os_servicos osr on osr.id_servico = s.id_servico;

-- 7.3
select om.*, m.nome_mecanico
from os_mecanicos om
right join mecanicos m on om.id_mecanico = m.id_mecanico;

-- 7.4  (arrumado)
select v.*, os.*
from ordens_servico os
right join veiculos v on os.id_veiculo = v.id_veiculo;

-- 8.1
select c.id_cliente, c.nome_cliente
from clientes c
where (
    select count(*)
    from ordens_servico os
    where os.id_cliente = c.id_cliente
) > 3;

-- 8.2
select distinct p.nome_peca
from pecas p
where p.id_peca in (
    select op.id_peca
    from os_pecas op
    where op.id_os in (
        select om.id_os
        from os_mecanicos om
        where om.id_mecanico = 4
    )
);

-- 8.3
select v.placa, v.modelo
from veiculos v
where v.id_veiculo not in (select os.id_veiculo from ordens_servico os);

-- 8.4
select * from servicos s
where s.tipo = 'mao de obra' and s.preco_mao_obra > (
    select avg(preco_mao_obra) from servicos
);

-- 9.1
select
(
    coalesce((select sum(preco_cobrado) from os_servicos where id_os = 100),0)
    +
    coalesce((select sum(preco_unitario_cobrado * quantidade_usada) from os_pecas where id_os = 100),0)
) as faturamento_total;

-- 9.2
select avg(datediff(data_conclusao, data_abertura)) as tempo_medio_dias
from ordens_servico
where data_conclusao is not null;

-- 9.3.1
select count(*) as total_veiculos from veiculos;

-- 9.3.2
select sum(qtd_estoque * preco_custo) as valor_total_estoque from pecas;

-- 9.3.3
select avg(preco_mao_obra) as media_preco_mao_obra from servicos;

-- 9.4.1
select marca_veiculo, count(*) as qtd
from veiculos
group by marca_veiculo;

-- 9.4.2
select year(data_abertura) as ano, month(data_abertura) as mes, count(*) as total_os
from ordens_servico
group by year(data_abertura), month(data_abertura)
order by ano, mes;

-- 9.4.3
select status, count(*) as total
from ordens_servico
group by status;

-- 9.3 (Filtro)
select count(*) as total_concluidas
from ordens_servico
where status = 'Concluído';

-- 9.3 (Filtro Fiat)
select
(
    coalesce((
        select sum(osr.preco_cobrado)
        from os_servicos osr
        join ordens_servico os2 on os2.id_os = osr.id_os
        join veiculos v2 on v2.id_veiculo = os2.id_veiculo
        where v2.marca_veiculo = 'Fiat'
        and os2.data_abertura >= CURDATE() - INTERVAL 1 YEAR
    ),0)
    +
    coalesce((
        select sum(op.preco_unitario_cobrado * op.quantidade_usada)
        from os_pecas op
        join ordens_servico os3 on os3.id_os = op.id_os
        join veiculos v3 on v3.id_veiculo = os3.id_veiculo
        where v3.marca_veiculo = 'Fiat'
        and os3.data_abertura >= CURDATE() - INTERVAL 1 YEAR
    ),0)
) as faturamento_fiat_ult_ano;

-- 9.3 média Motor
select avg(s.preco_mao_obra) as media_mao_obra_motor
from servicos s
where s.especialidade = 'Motor';

-- 9.4.4
select os.id_cliente, 
sum(
    coalesce((select sum(preco_cobrado) from os_servicos osr where osr.id_os = os.id_os),0)
    +
    coalesce((select sum(preco_unitario_cobrado * quantidade_usada) from os_pecas op where op.id_os = os.id_os),0)
) as total_gasto
from ordens_servico os
group by os.id_cliente
having total_gasto > 5000;

-- 9.4.5
select op.id_peca, sum(op.quantidade_usada) as total_vendida
from os_pecas op
group by op.id_peca
having total_vendida > 100;

-- 9.4.6
select m.especialidade, count(om.id_os) as total_os
from mecanicos m
join os_mecanicos om on om.id_mecanico = m.id_mecanico
group by m.especialidade
having total_os > 20;

-- 9.4.7
select m.nome_mecanico
from mecanicos m
join os_mecanicos om on om.id_mecanico = m.id_mecanico
group by m.id_mecanico, m.nome_mecanico
order by count(om.id_os) desc
limit 1;

-- 10.1
create index idx_placa on veiculos (placa);

-- 10.2
create index idx_ordens_id_veiculo on ordens_servico (id_veiculo);

-- 10.3
create index idx_os_peca_composto on os_pecas (id_os, id_peca);
