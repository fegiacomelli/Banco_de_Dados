CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
     id_class INT NOT NULL AUTO_INCREMENT,
     nome_class VARCHAR(255),
     skill VARCHAR (255),
     buff VARCHAR(255),
     PRIMARY KEY (id_class)
);

CREATE TABLE tb_personagem(
     id_pers BIGINT NOT NULL AUTO_INCREMENT,
     nome VARCHAR(255) NOT NULL,
     lvl INT DEFAULT 1,
     poder_at INT NOT NULL,
     poder_df INT NOT NULL,
     PRIMARY KEY (id_pers),
     fk_class INT,
     FOREIGN KEY (fk_class) REFERENCES tb_classe(id_class)
);

INSERT INTO tb_personagem (nome,lvl,poder_at,poder_df,fk_class)
VALUES
('fekiller','10',2000,4000,2),
('Christofu','10',2000,1500,3),
('Iformiga','5',1000,1200,1),
('Knb','20',4000,2000,4),
('Dalimon','13',2500,3000,5);

INSERT INTO tb_classe (nome_class,skill,buff)
VALUES
('Arqueiro', 'Flechas', 'veloz'),
('Tank', 'Escudo', 'resistente'),
('Suporte', 'Cura', 'Criar'),
('Sorcerer', 'Magias', 'Mana'),
('Atirador', 'sniper', 'Long range');

SELECT * FROM tb_personagem WHERE poder_at > 2000;

SELECT * FROM tb_personagem WHERE poder_df >= 1000 AND poder_df <= 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id_class = tb_personagem.fk_class;

SELECT * FROM tb_personagem WHERE fk_class = 2


