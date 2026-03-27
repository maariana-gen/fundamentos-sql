CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
	sabor VARCHAR(255) NOT NULL,
    inclusivo VARCHAR(255),
	bordarecheada VARCHAR(255) NOT NULL,
	valor DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Nutella com morango", "Vegetariana", "Não", 77.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Romeu e julieta", "Vegetariana", "Não", 55.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Mussarela", "Vegetariana", "Sim", 55.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Bacon", "-", "Sim", 66.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Mexicana", "-", "Sim", 44.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Californiana", "Vegetariana", "Sim", 44.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Água sem gás", "-", "-", 5.00);
INSERT INTO tb_pizzas (sabor, inclusivo, bordarecheada, valor)
VALUES ("Refrigerante lata", "-", "-", 7.00);

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50)
);

INSERT INTO tb_categorias (descricao, tamanho)
VALUES ("Doce", "20 cm");
INSERT INTO tb_categorias (descricao, tamanho)
VALUES ("Salgada", "35 cm");
INSERT INTO tb_categorias (descricao, tamanho)
VALUES ("Apimentada", "35 cm");
INSERT INTO tb_categorias (descricao, tamanho)
VALUES ("Agridoce", "35 cm");
INSERT INTO tb_categorias (descricao, tamanho)
VALUES ("Outros", NULL);

ALTER TABLE tb_pizzas ADD categoriaid BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 2;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 3;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 4;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 5;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 6;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 7;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 8;

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT sabor, inclusivo, bordarecheada, valor, tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.descricao = "Doce";

SELECT * FROM tb_pizzas;
