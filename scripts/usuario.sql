CREATE TABLE usuario(
	cpf VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(50),
	sobreNome VARCHAR(200),
	telefone VARCHAR(20),
	dataNascimento DATE,
	email VARCHAR(200) UNIQUE,
	senha VARCHAR(50)
);