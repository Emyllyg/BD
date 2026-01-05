-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE FUNCIONARIO (
	matricula Int PRIMARY KEY,
	nome Varchar(50),
	dataNasc date,
	nacionalidade Varchar(30),
	sexo Varchar(10),
	esatadoCivil Varchar(15),
	RG Varchar(15),
	CPF Varchar(15),
	endereco Varchar(50),
	telefone Varchar(15),
	dataAdmissao date
);

CREATE TABLE CARG.OCUPADOS (
	idCargo Int PRIMARY KEY, 
	dataInicio date,
	dataFim date,
	cargo Varchar(50)
);

CREATE TABLE DEPENDENTES (
	idDependentes Int PRIMARY KEY,
	nome Varchar(50),
	dataNasc date,
	matricula Int, --chave estrangeira
FOREIGN KEY(matricula) REFERENCES FUNCIONARIO (matricula)
)

CREATE TABLE ocupa (
	idCargo Int,		--chave estrangeira
	matricula Int,		--chave estrangeira
PRIMARY KEY(idCargo,matricula), --chave estrangeira
FOREIGN KEY(idCargo) REFERENCES CARG.OCUPADOS (idCargo),
FOREIGN KEY(matricula) REFERENCES FUNCIONARIO (matricula)
)

