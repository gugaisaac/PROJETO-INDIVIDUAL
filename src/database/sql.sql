CREATE DATABASE the_tardis;

USE the_tardis;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    doutor_fav INT
);

CREATE TABLE Mural (
	id_mural INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 
SELECT count(doutor_fav) as 'qtd_doutor', doutor_fav as 'DoutorFav' FROM usuario group by doutor_fav order by doutor_fav ASC ;
SELECT * FROM usuario;