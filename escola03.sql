-- Criando o banco de dados

CREATE DATABASE escola;
USE escola;

-- Criando tabela

CREATE TABLE escola_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
idade INT (255) NOT NULL,
turma VARCHAR (255) NOT NULL,
nota DECIMAL (10,2) NOT NULL);

-- Adicionando informações

INSERT INTO escola_alunos(nome, idade, turma, nota) VALUES
('Ana Clara', 15, '9º A', 8.5),
('Bruno Santos', 16, '9º B', 6.7),
('Carla Oliveira', 15, '9º A', 7.2),
('Diego Lima', 16, '9º B', 5.9),
('Eduarda Souza', 15, '9º A', 9.0),
('Fábio Rocha', 16, '9º B', 6.4);

--  retornar todos os estudantes com nota maior que 7.0
SELECT * FROM escola_alunos 
WHERE nota > 7.0;

-- retornar todos os estudantes com nota menor que 7.0
SELECT * FROM escola_alunos 
WHERE nota < 7.0;

-- atualizando
UPDATE escola_alunos SET nota = 7.2 WHERE id = 6;


