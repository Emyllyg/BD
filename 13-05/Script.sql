-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE DEPARTAMENTO (
	idDepartamento Int PRIMARY KEY,
	Nome Varchar(50),
	Localizacao varchar(30)
);

CREATE TABLE COLABORADOR (
	idColaborador Int PRIMARY KEY,
	Nome Varchar(50),
	CPF Varchar(15),
	DataAdmissao Date,
	idDepartamento Int,-- chave estrangeira (FK)
	FOREIGN KEY(idDepartamento) REFERENCES DEPARTAMENTO (idDepartamento)
);

CREATE TABLE gerencia (
	idColaborador Int,
	gerencia_idColaborador Int,
	PRIMARY KEY(idColaborador,gerencia_idColaborador)-- chave primária composta
);


