-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).



-- criando o banco de dados
CREATE DATABASE db_generation_game_online;

-- acessando o banco criado
USE db_generation_game_online;

-- criando tabela
CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL);

-- tabela dos personagens
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
tipo VARCHAR (255) NOT NULL,
classe_id BIGINT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- registros das classes
INSERT INTO tb_classes (nome, descricao) VALUES
('Fogo', 'Pokémons do tipo fogo, com ataques flamejantes'),
('Água', 'Pokémons do tipo água, dominam rios e oceanos'),
('Elétrico', 'Pokémons que usam eletricidade para atacar'),
('Planta', 'Pokémons ligados à natureza e à floresta'),
('Psíquico', 'Pokémons com poderes mentais e místicos');

-- registros dos personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, tipo, classe_id) VALUES
('Charizard', 50, 3200, 1800, 'Fogo', 1),
('Squirtle', 20, 1200, 1000, 'Água', 2),
('Blastoise', 45, 2800, 2200,'Água', 2),
('Pikachu', 30, 2000, 900, 'Elétrico', 3),
('Raichu', 42, 2600, 1500, 'Elétrico', 3),
('Bulbasaur', 18, 1100, 800, 'Planta', 4),
('Venusaur', 48, 2900, 2100, 'Planta', 4),
('Mewtwo', 70, 4000, 2500, 'Psíquico', 5);

-- Pokémons cujo ataque seja > e < que 2000
SELECT * FROM tb_personagens
WHERE ataque > 2000; 

SELECT * FROM tb_personagens
WHERE ataque < 2000;

-- Pokémons com a letra C
SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

-- INNER JOIN, unindo os dados da tabela
SELECT p.id, p.nome, p.nivel, p.ataque, p.defesa, c.nome AS tipo, c.descricao
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- INNER JOIN pokémons do tipo agua
SELECT p.id, p.nome, p.nivel, p.ataque, p.defesa, c.nome AS tipo
FROM tb_personagens p
-- ligando as tabelas
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Água';