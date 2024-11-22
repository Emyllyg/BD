-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE USUARIO (
	codigoUsuario Int PRIMARY KEY,
	dataCadastro Texto(1),	date
	dataNasc Texto(1), 		date
	nome 					Varchar[50],
	email 					Varchar[100],
	login 					Varchar[20],
	senha 					Varchar[20],
	areaAtuacao 			Varchar[30],
	profissao 				Varchar[30],
	areaFormacao 			Varchar[30],
	estadoCivil 			Varchar[15],
	escolaridade 			Varchar[30],
	estado 					Char[02]
);

CREATE TABLE ENQUETE (
	codigoEnquete Texto(1) 	Int	PRIMARY KEY,
	nome Texto(1)			Varchar,
	descricao Texto(1)		Varchar,
	dataInicial Texto(1)	date,
	dataFinal Texto(1)		date,
	codigoUsuario 			Int, -- chave estrangeira
	FOREIGN KEY(codigoUsuario) REFERENCES USUARIO (codigoUsuario)
);

CREATE TABLE RESPOSTAS (
	codigoRespostas Texto(1) Int PRIMARY KEY,
	descricao Texto(1)		 Varchar,
	codigoPerguntas Texto(1) Int,
);

CREATE TABLE PERGUNTAS (
codigoPerguntas Texto(1) Int,  PRIMARY KEY,
descricao Texto(1)		 Varchar,
codigoEnquete Texto(1)	 Int,
FOREIGN KEY(codigoEnquete) REFERENCES ENQUETE (codigoEnquete)
)

CREATE TABLE responder (
data Texto(1),
codigoUsuario 				Int, -- chave estrangeira  PRIMARY KEY,
codigoEnquete Texto(1),		Int, -- chave estrangeira
FOREIGN KEY(codigoUsuario) REFERENCES USUARIO (codigoUsuario),
FOREIGN KEY(codigoEnquete) REFERENCES ENQUETE (codigoEnquete)
)

ALTER TABLE RESPOSTAS ADD FOREIGN KEY(codigoPerguntas) REFERENCES PERGUNTAS (codigoPerguntas)
