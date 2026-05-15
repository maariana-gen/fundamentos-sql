CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    quantidade INT,
	necessitareceita VARCHAR(255) NOT NULL,
	valor DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Creme CeraVe", 77, "Não", 65.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Sabonete Nutrel", 111, "Não", 75.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Corticoide XT", 44, "Sim", 80.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Corticoide ZS", 22, "Sim", 120.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Dipirona", 222, "Não", 33.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Buscopan", 333, "Não", 30.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Pomada Desonida", 555, "Não", 70.00);
INSERT INTO tb_produtos (nome, quantidade, necessitareceita, valor)
VALUES ("Whey Protein", 33, "Não", 80.00);

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL,
    produtogenerico VARCHAR(50)
);

INSERT INTO tb_categorias (descricao, produtogenerico)
VALUES ("Skin-Care", "Não");
INSERT INTO tb_categorias (descricao, produtogenerico)
VALUES ("Corticoide", "Sim");
INSERT INTO tb_categorias (descricao, produtogenerico)
VALUES ("Capsulas", "Sim");
INSERT INTO tb_categorias (descricao, produtogenerico)
VALUES ("Pomada", "Sim");
INSERT INTO tb_categorias (descricao, produtogenerico)
VALUES ("Alimento", "Não");

ALTER TABLE tb_produtos ADD CONSTRAINT fk_farmacia_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 8;

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, quantidade, necessitareceita, valor, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.descricao = "Skin-Care";

SELECT * FROM tb_produtos;
