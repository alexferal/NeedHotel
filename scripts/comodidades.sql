CREATE TABLE comodidades(
     id SERIAL,
     recurso VARCHAR(200),
     CONSTRAINT comodidades_pk PRIMARY KEY(id, recurso),
     CONSTRAINT id_fk FOREIGN KEY(id)
         REFERENCES imovel(id)

)