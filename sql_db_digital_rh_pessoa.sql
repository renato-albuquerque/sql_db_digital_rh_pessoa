-- Aula 02, Exercício 01.

-- 1ª etapa, criar banco de dados: digital (Interface gráfica).

-- 2ª etapa, criar SCHEMA: rh.

-- CREATE SCHEMA IF NOT EXISTS rh;

-- 3ª etapa, no SCHEMA rh, criar a tabela: pessoa.

CREATE TABLE IF NOT EXISTS rh.pessoa (
 	id serial NOT NULL PRIMARY KEY,
 	nome character varying,
 	cpf character varying,
 	email character varying,
 	nascimento date,
 	renda numeric (18,2),
 	casa_propria boolean
);

-- Checar as colunas e tipos de dados que foram criados.
SELECT * FROM rh.pessoa;

-- 4ª etapa, inserir valores na tabela: rh.pessoa.

INSERT INTO rh.pessoa (nome, cpf, email, nascimento, renda, casa_propria) VALUES
('Pedro', '01234567890', 'pedro@digital.com.br', '1990-01-01', 2450.75, true),
('Renato', '01234567899', 'renato@digital.com.br', '1983-04-13', 5000.00, true);

-- Checar valores inseridos na tabela: rh.pessoa.
SELECT * FROM rh.pessoa;

-- 5ª etapa, visualizar apenas uma coluna.
SELECT nome FROM rh.pessoa;

-- 6ª etapa, visualizar duas colunas.
SELECT nome, cpf FROM rh.pessoa;


