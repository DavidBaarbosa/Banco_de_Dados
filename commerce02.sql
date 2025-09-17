-- Criando o banco de dados

CREATE DATABASE ecommerce;
USE ecommerce;

-- Criando tabela

CREATE TABLE ecommerce_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
categoria VARCHAR(255) NOT NULL,
preco DECIMAL (10,2) NOT NULL,
estoque INT NOT NULL,
descricao TEXT);

-- Adicionando informações

INSERT INTO RH_funcionarios(nome, categoria, preco, estoque, descricao) VALUES
('Smartphone XYZ', 'Eletrônicos', 1200.00, 50, 'Smartphone com 128GB, 6GB RAM, câmera tripla'),
('Notebook ABC', 'Eletrônicos', 3500.00, 30, 'Notebook 16GB RAM, SSD 512GB, Intel i7'),
('Fone de Ouvido PQR', 'Acessórios', 250.00, 100, 'Fone Bluetooth, cancelamento de ruído'),
('Camiseta Casual', 'Vestuário', 80.00, 200, 'Camiseta 100% algodão, cores variadas'),
('Tênis Esportivo', 'Calçados', 450.00, 80, 'Tênis confortável para corrida'),
('Relógio Inteligente', 'Eletrônicos', 800.00, 60, 'Smartwatch com monitoramento de saúde'),
('Cadeira Gamer', 'Móveis', 1500.00, 20, 'Cadeira ergonômica para gamers'),
('Livro de História', 'Livros', 60.00, 150, 'Livro sobre História Mundial');

-- retornar todos os produtos com preço maior que 500
SELECT * FROM produtos 
WHERE preco > 500;

-- retornar todos os produtos com preço menor que 500
SELECT * FROM produtos
WHERE preco < 500;

-- atualizando
UPDATE produtos SET estoque = 200 WHERE id = 6;


