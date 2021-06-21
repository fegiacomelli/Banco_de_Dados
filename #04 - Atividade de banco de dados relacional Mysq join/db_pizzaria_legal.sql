CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE tb_categoria(
   id_c BIGINT AUTO_INCREMENT,
   tipo VARCHAR(255),
   tamanho VARCHAR(255),
   PRIMARY KEY(id_c)
);

CREATE TABLE tb_pizza(
     id_p INT AUTO_INCREMENT,
     nome VARCHAR(255) NOT NULL,
     discricao VARCHAR(255),
     valor FLOAT,
     PRIMARY KEY (id_P),
     fk_tipo BIGINT,
     FOREIGN KEY(fk_tipo) REFERENCES tb_categoria(id_c)
);


INSERT INTO tb_categoria (tipo,tamanho)
VALUES
('salgado','broto'),
('salgado','grande'),
('doce','broto'),
('doce','grande');

INSERT INTO tb_pizza (nome,discricao,valor,fk_tipo)
VALUES
('calabresa','calabresa com cebola',24.99,1),
('mussarela','queijo mussarela com tomate',30,1),
('frango','frango com catupiry',32,1),
('Romeu e julieta','goiabada com queijo',20,3),
('banofe','banana com doce de leite',19.99,3),
('calabresa','calabresa com cebola',49.99,2),
('mussarela','queijo mussarela com tomate',49.99,2),
('frango','frango com catupiry',59.99,2),
('Romeu e julieta','goiabada com queijo',40.00,4),
('banofe','banana com doce de leite',39.99,4);


SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor >= 29 AND valor <= 60;

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id_c = tb_pizza.fk_tipo;

SELECT * FROM tb_pizza WHERE fk_tipo = 2



