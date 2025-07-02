create database NewVision;

use NewVision;

CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    re VARCHAR(6) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    nivelAcesso VARCHAR(8) NULL,         -- ADMIN, TECNICO, OPERADOR
    dataCadastro  DATE,
    statusUsuario VARCHAR(14) NOT NULL   -- ATIVO, INATIVO, TROCAR_SENHA
);

INSERT INTO Usuario (nome, re, senha, nivelAcesso, dataCadastro, statusUsuario)
VALUES 
('Pedro Salvi', '00001', '1234', 'ADMIN', CURDATE(), 'ATIVO'),
('Lais do Nascimento Villano', '00002','1234', 'TECNICO', CURDATE(), 'TROCAR_SENHA'),
('Rodrigo dos Santos Carlos', '00003', '1234', 'OPERADOR', CURDATE(), 'INATIVO');

show databases;
show tables;
select * from Usuario;