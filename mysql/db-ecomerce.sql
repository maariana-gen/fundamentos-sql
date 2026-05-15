CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	sabor VARCHAR(255) NOT NULL,
    inclusivo VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	valor DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Ninho com nutella", "-", 88, "2026-04-04", 15.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Kinder Bueno", "-", 77, "2026-04-04", 15.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Ovomaltine", "-", 66, "2026-04-04", 15.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Chocolate", "Não contém açucar", 22, "2026-05-05", 13.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Doce de leite", "Não contém glúten", 44, "2026-05-05", 13.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Prestígio", "Não contém lactose", 33, "2026-05-05", 13.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Água mineral sem gás", "-", 111, "2026-12-26", 5.00);
INSERT INTO tb_produtos (sabor, inclusivo, quantidade, datavalidade, valor)
VALUES ("Água mineral com gás", "-", 99, "2026-12-26", 5.00);

SELECT * FROM tb_produtos WHERE valor > 10.00;
SELECT * FROM tb_produtos WHERE valor < 10.00;

UPDATE tb_produtos SET sabor = "Brigadeiro" WHERE id = 4;

SELECT * FROM tb_produtos;
