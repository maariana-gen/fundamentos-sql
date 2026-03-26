CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    aniversario DATE,
	salario DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, telefone, aniversario, salario)
VALUES ("Mariana", "Estagiária", "11 98888-8888", "2007-06-08", 2500.00);
INSERT INTO tb_colaboradores (nome, cargo, telefone, aniversario, salario)
VALUES ("Laudenira", "Chefe", "11 91515-1515", "1971-06-15", 50000.00);
INSERT INTO tb_colaboradores (nome, cargo, telefone, aniversario, salario)
VALUES ("Ricardo", "Gerente", "11 99999-9999", "1994-02-09", 20000.00);
INSERT INTO tb_colaboradores (nome, cargo, telefone, aniversario, salario)
VALUES ("Laís", "Contadora", "11 92222-2222", "2000-01-22", 10000.00);
INSERT INTO tb_colaboradores (nome, cargo, telefone, aniversario, salario)
VALUES ("Denise", "Psicóloga", "11 92020-2020", "1967-04-20", 15000.00);
INSERT INTO tb_colaboradores (nome, cargo, telefone, aniversario, salario)
VALUES ("Ivanildo", "Segurança", "11 90202-0202", "1946-09-02", 5000.00);

SELECT * FROM tb_colaboradores WHERE salario > 10000;
SELECT * FROM tb_colaboradores WHERE salario < 5000;

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 1;

SELECT * FROM tb_colaboradores;