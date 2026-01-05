-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE ALUNO (
	MatriculaAluno int PRIMARY KEY, -- chave primária (PK)
	Nome Varchar(50),
	Endereco Varchar(30)
);

CREATE TABLE DISCIPLINA (
	CodigoDisciplina Int PRIMARY KEY, -- chave primária (PK)
	CargaHoraria Varchar(20),
	Nome Varchar(50)
);

CREATE TABLE matricular (
	MatriculaAluno int,   -- chave estrangeira (FK)
	CodigoDisciplina Int, -- chave estrangeira (FK)
	DataMatricula Date, 
	PRIMARY KEY(MatriculaAluno,CodigoDisciplina), -- PK composta
	FOREIGN KEY(MatriculaAluno) REFERENCES ALUNO (MatriculaAluno),
	FOREIGN KEY(CodigoDisciplina) REFERENCES DISCIPLINA (CodigoDisciplina)
);

