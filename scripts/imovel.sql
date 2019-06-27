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
)