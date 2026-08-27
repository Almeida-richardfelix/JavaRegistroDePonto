-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS sistema_ponto;
USE sistema_ponto;

-- Tabela de Funcionários
CREATE TABLE IF NOT EXISTS funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50)
);

-- Tabela de Marcações de Ponto
CREATE TABLE IF NOT EXISTS marcacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    funcionario_id INT,
    data_hora DATETIME NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);

-- Inserção de dados iniciais para teste
INSERT INTO funcionarios (nome, cargo) VALUES ('Richard Felix', 'Desenvolvedor Java');

INSERT INTO marcacoes (funcionario_id, data_hora, tipo) VALUES 
(1, '2026-05-04 08:00:00', 'ENTRADA'),
(1, '2026-05-04 18:00:00', 'SAIDA'),
(1, '2026-06-01 08:05:00', 'ENTRADA');