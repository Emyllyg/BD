-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE CLIENTE (
	IDNumero 		Int PRIMARY KEY NOT NULL,
	Endereco 		Varchar(30) NOT NULL,
	Telefone 		Varchar(15) NOT NULL,
	Email 			Varchar(100)NOT NULL,
	DataCadastro 	Date,		NOT NULL
	Nome 			Varchar(50) NOT NULL,
	Status 			Varchar(20) NOT NULL, 
);

CREATE TABLE VEICULO (
	NumeroRegistro	Int PRIMARY KEY NOT NULL,
	Marca 			Varchar(20)	NOT NULL,
	Modelo 			Varchar(20) NOT NULL,
	AnoFabricacao 	Int			NOT NULL,
	Tipo 			Varchar(20)	NOT NULL,
	Placa 			Varchar(10) NOT NULL,
	IDNumero 		Int			NOT NULL,
FOREIGN KEY(IDNumero) REFERENCES CLIENTE (IDNumero)
);

CREATE TABLE PessoaFisica (
	IDNumero 		Int PRIMARY KEY NOT NULL,
	Sexo 			Char			NOT NULL,
	EstadoCivil 	Varchar(10)		NOT NULL,
	Habilitacao 	Varchar(15)		NOT NULL,
	Profissao 		Varchar(50)		NULL,
	CPF 			Varchar(15)		NOT NULL,
	DataNasc 		Date			NOT NULL,
	RG 				Varchar(15)		NOT NULL,
	FaixaRenda 		decimal(9,2)	NULL,
FOREIGN KEY(IDNumero) REFERENCES CLIENTE (IDNumero)
);

CREATE TABLE PessoaJuridica (
	IDNumero 			Int PRIMARY KEY NOT NULL,
	RazaoSocial 		Varchar(100)	NOT NULL,
	CNPJ 				Varchar(15)		NOT NULL,
	InscricaoEstadual 	Varchar(15)		NOT NULL,
	RamoAtividade 		Varchar(50)		NULL,
	ContatoResponsavel 	Varchar(100)	NULL,
FOREIGN KEY(IDNumero) REFERENCES CLIENTE (IDNumero)
);

CREATE TABLE ACIDENTE (
	IDNumero 			Int PRIMARY KEY NOT NULL,
	DataAcidente 		Date			NOT NULL,
	Hora 				Time			NOT NULL,
	LocalAcidente	    Varchar(100),	NOT NULL,
	Descricao 			Varchar(100)	NOT NULL,
	NumeroRegistro 		Int				NOT NULL,
FOREIGN KEY(NumeroRegistro) REFERENCES VEICULO (NumeroRegistro)
);

CREATE TABLE APOLICE (
	NumeroApolice 	Int PRIMARY KEY		NOT NULL,
	Valor 			Decimal(9,2)		NOT NULL,
	Descricao 		Varchar(100)		NOT NULL,
	NumeroRegistro 	Int					NOT NULL,
FOREIGN KEY(NumeroRegistro) REFERENCES VEICULO (NumeroRegistro)
);

