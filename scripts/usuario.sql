CREATE TABLE usuario(
	cpf VARCHAR(14),
	nome VARCHAR(50),
	sobreNome VARCHAR(200),
	telefone VARCHAR(20),
	dataNascimento DATE,
	email VARCHAR(200) UNIQUE,
	senha VARCHAR(50),
    CONSTRAINT cpf_pk PRIMARY KEY(cpf)
);

CREATE TABLE imovel(
    id VARCHAR(100),
    proprietario VARCHAR(14),
    nome VARCHAR(200),
    rua VARCHAR(200),
    bairro VARCHAR(100),
    numero VARCHAR(10),
    cep VARCHAR(9),
    cidade VARCHAR(100),
    estado VARCHAR(100),
    valor FLOAT,
    disponibilidade BOOLEAN,
    CONSTRAINT id_pk PRIMARY KEY(id),
    CONSTRAINT proprietario_fk FOREIGN KEY(proprietario)
        REFERENCES usuario(cpf)
);

CREATE TABLE comodidade(
    id_imovel VARCHAR(100),
    recurso VARCHAR(200),
    CONSTRAINT comodidade_pk PRIMARY KEY(id_imovel),
    CONSTRAINT id_fk FOREIGN KEY(id_imovel)
        REFERENCES imovel(id)

);

