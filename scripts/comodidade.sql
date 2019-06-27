CREATE TABLE comodidade(
     id_imovel VARCHAR(100),
     recurso VARCHAR(200),
     CONSTRAINT comodidade_pk PRIMARY KEY(id),
     CONSTRAINT id_fk FOREIGN KEY(id)
         REFERENCES imovel(id)

);
