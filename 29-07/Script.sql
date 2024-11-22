-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

	CREATE TABLE LIVRO (
	ID_Livro 			Int PRIMARY KEY NOT NULL,
	Titulo 				Varchar(255) NOT NULL,
	Autor 				Varchar(255) NOT NULL,
	Ano_Publicacao 		Int NOT NULL,
	Editora 			Varchar(100) NOT NULL,
	Genero 				Varchar(30) NOT NULL,
);

CREATE TABLE USUARIO (
	ID_Usuario 		Int PRIMARY KEY NOT NULL,
	Nome 			Varchar(50) NOT NULL,
	Endereco 		Varchar(30) NOT NULL,
	Telefone 		Varchar(15) NOT NULL,
	Email 			Varchar(30) NOT NULL,
);

	CREATE TABLE EMPRESTIMO (
	ID_Emprestimo 		Int PRIMARY KEY NOT NULL,
	ID_Usuario 			Int NOT NULL, -- CHAVE ESTRANGEIRA
	ID_Livro 			Int NOT NULL, -- CHAVE ESTRANGEIRA
	Data_Emprestimo 	Date NOT NULL,
	Data_Devolucao 		Date NULL,
	FOREIGN KEY(ID_Usuario) REFERENCES USUARIO (ID_Usuario)
	FOREIGN KEY(ID_Livro) REFERENCES LIVRO (ID_Livro)
);

	CREATE TABLE EXEMPLAR (
	ID_Exemplar 		Int PRIMARY KEY NOT NULL,
	ID_Livro 			Int NOT NULL, -- CHAVE ESTRANGEIRA
	Codigo_ Exemplar 	Int NOT NULL,
	Estado 				Varchar(10) NOT NULL,
	FOREIGN KEY(ID_Livro) REFERENCES LIVRO (ID_Livro)
);


