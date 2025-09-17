-- Criando o banco de dados

CREATE DATABASE RH_Empresa;
USE RH_Empresa;

-- Criando tabela dos funcionarios

CREATE TABLE RH_funcionarios(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL (10,2) NOT NULL,
data_admissao DATE);

-- Adicionando informações

INSERT INTO RH_funcionarios(nome, cargo, salario, data_admissao) VALUES
('David', 'Desenvolvedor', 4000.00, '2025-10-01'),
('Luiza', 'Desenvolvedora', 6000.00, '2025-08-15'),
('Paola', 'Analista', 5000.00, '2023-12-30'),
('Camila', 'Gerente', 3000.00, '2022-01-30');

-- funionários com salário menor que 2000
SELECT * FROM RH_funcionarios 
WHERE salario < 2000;

-- funionários com salário maior que 2000
SELECT * FROM RH_funcionarios 
WHERE salario > 2000;

-- atualizando salário
UPDATE RH_funcionarios SET salario = 3500.00 WHERE id = 4;


