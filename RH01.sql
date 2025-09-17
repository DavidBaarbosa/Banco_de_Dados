-- Criando o banco de dados

CREATE DATABASE RH_Empresa;
USE RH_Empresa;

-- Criando tabela dos funcionarios

CREATE TABLE RH_funcionarios(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cargo VARCHAR(50),
salario DECIMAL (10,2),
data_admissao DATE);

INSERT INTO RH_funcionarios(nome, cargo, salario, data_admissao)
VALUES
('David', 'Desenvolvedor', 4000.00, '2025-10-01'),
('Luiza', 'Desenvolvedora', 6000.00, '2025-08-15'),
('Paola', 'Analista', 5000.00, '2023-12-30'),
('Camila', 'Gerente', 3000.00, '2022-01-30');

-- funionários om salário menor que 2000
SELECT * FROM RH_funcionarios 
WHERE salario < 2000;

-- funionários om salário maior que 2000
SELECT * FROM RH_funcionarios 
WHERE salario > 2000;

-- atualizando salário
UPDATE RH_funcionarios SET salario = 3500.00 WHERE id = 4;


