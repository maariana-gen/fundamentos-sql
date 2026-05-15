CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    aniversario DATE NOT NULL,
    serie VARCHAR(255) NOT NULL,
    periodo VARCHAR(255) NOT NULL,
    notamedia DECIMAL(3,1) NOT NULL,
    contatoresponsavel VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Mariana", "2009-06-08", "3º ano", "Matutino", 8.8, "11 98888-8888");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Maria Eduarda", "2009-01-29", "3º ano", "Matutino", 7.5, "11 92929-2929");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Otto", "2009-07-28", "3º ano", "Matutino", 10.0, "11 92828-2828");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Matheus", "2010-12-12", "2º ano", "Vespertino", 10.0, "11 91212-1212");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Milena", "2010-12-21", "2º ano", "Vespertino", 8.5, "11 92121-2121");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Murillo", "2010-08-06", "2º ano", "Vespertino", 7.8, "11 90606-0606");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("Felipe", "2011-08-29", "1º ano", "Vespertino", 6.0, "11 92929-2929");
INSERT INTO tb_estudantes (nome, aniversario, serie, periodo, notamedia, contatoresponsavel)
VALUES ("João Vitor", "2011-05-06", "1º ano", "Vespertino", 6.0, "11 90606-0606");

SELECT * FROM tb_estudantes WHERE notamedia > 7.0;
SELECT * FROM tb_estudantes WHERE notamedia < 7.0;

UPDATE tb_estudantes SET notamedia = 6.2 WHERE id = 8;

SELECT * FROM tb_estudantes;
