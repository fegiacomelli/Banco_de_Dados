CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
   id_c BIGINT AUTO_INCREMENT,
   tipo VARCHAR(255),
    ml  VARCHAR(255),
    receita VARCHAR(255),
   PRIMARY KEY(id_c)
);

CREATE TABLE tb_produto(
     id_p INT AUTO_INCREMENT,
     nome VARCHAR(255) NOT NULL,
     discricao VARCHAR(255),
     valor FLOAT,
     PRIMARY KEY (id_P),
     fk_tipo BIGINT,
     FOREIGN KEY(fk_tipo) REFERENCES tb_categoria(id_c)
);


INSERT INTO tb_categoria (tipo,ml,receita)
VALUES
('Genérico','50ML','NAO PRECISA'),
('Genérico','100ML','NAO PRECISA'),
('Manipulado','100ML','NAO PRECISA'),
('Manipulado','200ML','NAO PRECISA'),
('Fitoterápico','100ML','PRECISA'),
('Fitoterápico','50ML','PRECISA'),
('Similar','100ML','NAO PRECISA'),
('Similar','200ML','NAO PRECISA');


INSERT INTO tb_produto (nome,discricao,valor,fk_tipo)
VALUES
('dorflex','para dores',3.59,1),
('advil','para dores',5.59,2),
('Pantocare','para dores',10.59,3),
('DESMOVIT','para dores',12.59,4),
('GLICOERVAS BOTANIC','para dores',20.59,5),
('Lowat','para dores',30.59,6),
('glico','para dores',7.59,7),
('glicose','para dores',17.59,8);



SELECT * FROM tb_produto WHERE valor > 30;

SELECT * FROM tb_produto WHERE valor >= 3 AND valor <= 30;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id_c = tb_produto.fk_tipo;

SELECT * FROM tb_produto WHERE fk_tipo = 2
