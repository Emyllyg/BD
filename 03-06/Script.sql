-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE FORNECEDOR (
	CodigoFornecedor Int PRIMARY KEY,
	Nome 				Varchar(50), not null,
	Endereco 			Varchar(30), not null,
	Telefone 			Varchar(15), not null,
	Cidade 				Varchar(50), not null,
	Estado 				Char(2)
);



CREATE TABLE MATERIAL (
	CodigoMaterial 		Int PRIMARY KEY,
	ValorTotal 			Decimal(9,2), not null,
	ValorUnit 			Decimal(9,2), not null,
	Descricao 			Varchar(50),  not null,
	Qtde 				Int           not null,
);



CREATE TABLE ORDEM_COMPRA (
	CodigoOC 			Int PRIMARY KEY, not null,
	DataEmissao			Date,            not null,
	ValorTotal 			Decimal(9,2),    not null,
	CodigoFornecedor 	Int,             not null, -- chave estrangeira
	FOREIGN KEY(CodigoFornecedor) REFERENCES FORNECEDOR (CodigoFornecedor)
);

CREATE TABLE ITEM_COMPRA (
	CodigoItemCompra 	Int PRIMARY KEY, not null,
	CodigoMaterial 		Int,             not null, -- chave estrangeira
	CodigoOC 			Int,             not null, -- chave estrangeira
	FOREIGN KEY(CodigoMaterial) REFERENCES MATERIAL (CodigoMaterial),
	FOREIGN KEY(CodigoOC) REFERENCES ORDEM_COMPRA (CodigoOC)
);

