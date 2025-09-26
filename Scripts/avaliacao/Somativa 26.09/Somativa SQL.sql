CREATE DATABASE PLATAFORMA_CURSOS_ON;
USE PLATAFORMA_CURSOS_ON;

-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.
CREATE TABLE alunos (
id_aluno int not null auto_increment PRIMARY KEY,
nome varchar(100),
email varchar(200) not null,
data_nascimento_aluno date
);

CREATE TABLE cursos (
id_curso int not null auto_increment PRIMARY KEY,
titulo varchar(100),
descricao varchar(200),
carga_horaria int,
status varchar(20) default "ativo"
);

CREATE TABLE incricoes (
id_incricao int not null auto_increment PRIMARY KEY,
data_incricao date,
id_aluno int not null,
id_curso int not null,
FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno),
FOREIGN KEY(id_curso) REFERENCES cursos (id_curso)
);

CREATE TABLE avaliacoes (
id_avaliacao int not null auto_increment PRIMARY KEY,
nota decimal,
comentario varchar(200),
id_incricao int not null,
FOREIGN KEY(id_incricao) REFERENCES incricoes (id_incricao)
);
-- Inserção de dados
-- 5 alunos
-- 5 cursos
-- 5 inscrições
-- 3 avaliações
-- 1 curso com status “inativo”

-- Tabela alunos
INSERT INTO alunos (nome, email, data_nascimento_aluno)
VALUES ('Ana Clara Souza', 'ana.clara@email.com', '2002-05-14');

INSERT INTO alunos (nome, email, data_nascimento_aluno)
VALUES ('Bruno Henrique Silva', 'bruno.h.silva@email.com', '2001-11-23');

INSERT INTO alunos (nome, email, data_nascimento_aluno)
VALUES ('Carlos Eduardo Ramos', 'carlos.ramos@email.com', '2003-02-10');

INSERT INTO alunos (nome, email, data_nascimento_aluno)
VALUES ('Daniela Pereira', 'daniela.pereira@email.com', '2000-08-30');

INSERT INTO alunos (nome, email, data_nascimento_aluno)
VALUES ('Fernanda Lima', 'fernanda.lima@email.com', '1999-12-05');
-- Cursos
INSERT INTO cursos (titulo, descricao, carga_horaria, status)
VALUES ('Introdução à Programação', 'Curso básico para iniciantes em lógica e programação.', 40, 'ativo');

INSERT INTO cursos (titulo, descricao, carga_horaria, status)
VALUES ('Banco de Dados MySQL', 'Curso completo de modelagem e SQL no MySQL.', 60, 'ativo');

INSERT INTO cursos (titulo, descricao, carga_horaria, status)
VALUES ('Desenvolvimento Web', 'HTML, CSS e JavaScript para criação de sites modernos.', 80, 'ativo');

INSERT INTO cursos (titulo, descricao, carga_horaria, status)
VALUES ('Redes de Computadores', 'Conceitos fundamentais de redes e protocolos.', 50, 'inativo');

INSERT INTO cursos (titulo, descricao, carga_horaria, status)
VALUES ('Segurança da Informação', 'Introdução às práticas de segurança digital.', 30, 'ativo');
-- Inscrições
INSERT INTO incricoes (data_incricao, id_aluno, id_curso)
VALUES ('2025-09-01', 1, 3);

INSERT INTO incricoes (data_incricao, id_aluno, id_curso)
VALUES ('2025-09-02', 2, 1);

INSERT INTO incricoes (data_incricao, id_aluno, id_curso)
VALUES ('2025-09-03', 3, 5);

INSERT INTO incricoes (data_incricao, id_aluno, id_curso)
VALUES ('2025-09-04', 4, 2);

INSERT INTO incricoes (data_incricao, id_aluno, id_curso)
VALUES ('2025-09-05', 5, 4);
-- Avaliações
INSERT INTO avaliacoes (nota, comentario, id_incricao)
VALUES (9.5, 'Ótimo aproveitamento do curso', 2);
-- Pequena alteração por conta que o decimal não esta corretamente definido
ALTER TABLE avaliacoes modify column nota decimal(3,1);
SELECT avaliacoes.nota from avaliacoes;

INSERT INTO avaliacoes (nota, comentario, id_incricao)
VALUES (8.0, 'Bom desempenho, mas pode melhorar', 3);

INSERT INTO avaliacoes (nota, comentario, id_incricao)
VALUES (10.0, 'Excelente participação e dedicação', 5);

-- UPDATES
-- Atualizar email de um aluno
-- Alterar carga horária de um curso
-- Corrigir nome de aluno
-- Mudar status de curso
-- Alterar nota de uma avaliação

-- UPADTE email e o nome de um aluno
UPDATE alunos SET alunos.email = "brunao.moraes.silva@email.com" WHERE alunos.id_aluno =2;
UPDATE alunos SET alunos.nome = "Brunão Moraes" WHERE alunos.id_aluno = 2;
SELECT * FROM alunos;
-- UPDATE carga horaria e status de um curso
UPDATE cursos SET cursos.carga_horaria = 60 WHERE cursos.id_curso = 5;
UPDATE cursos SET cursos.status = "inativo" WHERE cursos.id_curso =3;
SELECT * FROM cursos;
-- Alterar nota de uma avaliação
UPDATE avaliacoes SET avaliacoes.nota = 8.5 WHERE avaliacoes.id_avaliacao = 3;
SELECT * FROM avaliacoes;

-- DELETE
-- Excluir uma inscrição
-- Excluir um curso
-- Excluir uma avaliação ofensiva
-- Excluir um aluno
-- Excluir todas inscrições de um curso encerrado


-- deletando todas as inscrições de um curso inativo junto com uma avaliação negativa
-- Procura cursos inativos
SELECT * FROM cursos;
-- Procura inscricoes de cursos inativos
SELECT * FROM incricoes;
-- Procura avaliações de inscrições de cursos inativos
SELECT * FROM avaliacoes;
-- Apaga a avaliacao pertecente a incricoes
DELETE FROM avaliacoes WHERE avaliacoes.id_avaliacao =1 ;
-- Apaga a incricoes pertecente a um curso inativo
DELETE FROM incricoes WHERE incricoes.id_incricao = 1;

-- Excluir curso
SELECT * FROM incricoes;
-- Curso 3 não pertence a nenhuma inscrição
SELECT * FROM cursos;
DELETE FROM cursos WHERE cursos.id_curso = 3;

-- Excluir um aluno;
SELECT * FROM incricoes;
-- Aluno 1 não pertece a nenhuma inscrição
SELECT * FROM alunos;
DELETE FROM alunos WHERE alunos.id_aluno =1;

-- SELECTs
-- 1. Listar todos os alunos cadastrados
-- 2. Exibir apenas os nomes e e-mails dos alunos
-- 3. Listar cursos com carga horária maior que 30 horas
-- 4. Exibir cursos que estão inativos
-- 5. Buscar alunos nascidos após o ano 1995
-- 6. Exibir avaliações com nota acima de 9
-- 7. Contar quantos cursos estão cadastrados
-- 8. Listar os 3 cursos com maior carga horária

-- 1
SELECT * FROM alunos;

-- 2 
SELECT alunos.nome,alunos.email FROM alunos;

-- 3 
SELECT * FROM cursos WHERE cursos.carga_horaria > 30;

-- 4
SELECT * FROM cursos WHERE cursos.status = "inativo";

-- 5
SELECT * FROM alunos WHERE alunos.data_nascimento_aluno > '1995-01-01';

-- 6
SELECT * FROM avaliacoes WHERE avaliacoes.nota >= 9;

-- 7 
SELECT count(*) FROM cursos;

-- 8
SELECT * FROM cursos ORDER BY cursos.carga_horaria LIMIT 3;


-- Desafio extra

-- Criar índice para busca rápida por email de aluno

alter table alunos ADD index idx_email (email);