CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    periodo VARCHAR(255) NOT NULL,
	tempocurso VARCHAR(255),
	valor DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY (id)
);

INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Engenharia de Software", "Integral", "4 anos", 1110.00);
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Ciência da Computação", "Integral", "4 anos", 980.00);
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Sistema de Informação", "Integral", "4 anos", 950.00);
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Análise e Desenvolvimento de Sistemas", "Meio Período", "3 anos", 680.00);
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Banco de Dados", "Meio Período", "3 anos", 620.00);
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Desenvolvedor FullStack: Java", "5 horas por semana", "6 meses", 550.00); 
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Inglês", "2 horas por semana", "-", 450.00);
INSERT INTO tb_cursos (nome, periodo, tempocurso, valor)
VALUES ("Espanhol", "2 horas por semana", "-", 400.00);  

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL,
    diplomaincluso VARCHAR(50) NOT NULL
);

INSERT INTO tb_categorias (descricao, diplomaincluso)
VALUES ("Bacharelado", "Sim");
INSERT INTO tb_categorias (descricao, diplomaincluso)
VALUES ("Licenciatura", "Sim");
INSERT INTO tb_categorias (descricao, diplomaincluso)
VALUES ("Tecnólogo", "Sim");
INSERT INTO tb_categorias (descricao, diplomaincluso)
VALUES ("Técnico", "Sim");
INSERT INTO tb_categorias (descricao, diplomaincluso)
VALUES ("Curso", "Não");

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

UPDATE tb_cursos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_cursos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_cursos SET categoriaid = 2 WHERE id = 3;
UPDATE tb_cursos SET categoriaid = 3 WHERE id = 4;
UPDATE tb_cursos SET categoriaid = 4 WHERE id = 5;
UPDATE tb_cursos SET categoriaid = 5 WHERE id = 6;
UPDATE tb_cursos SET categoriaid = 5 WHERE id = 7;
UPDATE tb_cursos SET categoriaid = 5 WHERE id = 8;

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT nome, periodo, tempocurso, valor, tb_categorias.descricao FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoriaid = tb_categorias.id WHERE tb_categorias.descricao = "Curso";

SELECT * FROM tb_cursos;
