-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE PACIENTE (
	NumPaciente Int PRIMARY KEY,
	Nome 		Varchar(50),
	Endereco 	Varchar(50),
	Telefone 	Varchar(15),
	DataNasc 	Date,
	Convenio 	Varchar(100),
	RG 			Varchar(15),
	Sexo 		Char,
	EstadoCivil Varchar(20)
);


CREATE TABLE MEDICO (
	CrmMédico 		Int PRIMARY KEY,
	Nome 			Varchar(50),
	Especialidade 	Varchar(100),
	Telefone 		Varchar(15)
);


CREATE TABLE EXAME (
	IdExame 		Int PRIMARY KEY,
	Nome			Varchar(100),
	Descricao 		Varchar(255)
);


CREATE TABLE CONSULTA (
	NumConsulta 	Int PRIMARY KEY,
	DataConsulta 	Date,
	Diagnostico 	Varchar(255),
	NumPaciente 	Int, -- chave estrangeira
	CrmMédico 		Int, -- chave estrangeira
	FOREIGN KEY(CrmMédico) REFERENCES MEDICO (CrmMédico),
	FOREIGN KEY(NumPaciente) REFERENCES PACIENTE (NumPaciente)
);



CREATE TABLE proceder (
	idListaExames 	Int PRIMARY KEY,
	DataExame 		Date,
	IdExame 		Int,    	-- chave estrangeira
	NumConsulta 	Int,		-- chave estrangeira
	FOREIGN KEY(IdExame) REFERENCES EXAME (IdExame),
	FOREIGN KEY(NumConsulta) REFERENCES CONSULTA (NumConsulta)
);
