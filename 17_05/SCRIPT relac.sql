-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE DEPARTAMENTO (
localizacao Varchar(30),
nome Varchar(50),
idDepartamento Int PRIMARY KEY
)

CREATE TABLE COLABORADOR (
idColaborador Int PRIMARY KEY,
nome Varchar(50),
CPF Varchar(15),
dataAdimissao Date,
possui_idColaborador Int, --chave estrangeira
idDepartamento Int,           --atributo gerado do auto-relacionamento � partir da chave prim�ria idColaborador
FOREIGN KEY(idDepartamento) REFERENCES DEPARTAMENTO (idDepartamento)
)

