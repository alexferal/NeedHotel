CREATE TABLE usuario(
	cpf VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(50),
	sobreNome VARCHAR(200),
	telefone VARCHAR(20),
	dataNascimento DATE,
	email VARCHAR(200) UNIQUE,
	senha VARCHAR(50)
);

insert into usuario values ('12345678900', 'alex', 'fernandes', '123456789', '1234-12-21', 'alex@game.com', '1234')