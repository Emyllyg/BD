-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE CLIENTE (
	idCliente Int NOT NULL PRIMARY KEY,
	nome 	  Varchar(50), NOT NULL,
	Endereco  Varchar(30), NOT NULL,
	telefone  Varchar(15), NOT NULL,
	email     Varchar(100) NOT NULL
);

CREATE TABLE PRODUTO (
	idProduto 	Int NOT NULL PRIMARY KEY,
	preco 		Decimal(9,2), NOT NULL,
	descricao 	Varchar(100), NOT NULL,
	estoque 	Int, 		  NOT NULL,
	nome 		Varchar(50) NOT NULL
);

CREATE TABLE PEDIDO (
	idPedido Int PRIMARY KEY,
	idCliente Int,
	status Varchar(20),
	dataPedido Date,
FOREIGN KEY(idCliente) REFERENCES CLIENTE (idCliente)
);

CREATE TABLE ITEM_PEDIDO (
	idItemPedido Int PRIMARY KEY,
	idProduto Int,
	idPedido Int,
	quantidade Int,
	preco Decimal(9,2),
FOREIGN KEY(idProduto) REFERENCES PRODUTO (idProduto),
FOREIGN KEY(idPedido) REFERENCES PEDIDO (idPedido)
);

CREATE TABLE FATURA (
	idFatura Int PRIMARY KEY,
	idPedido Int,
	data Date,
	Valor Total Decimal(9,2),
FOREIGN KEY(idPedido) REFERENCES PEDIDO (idPedido)
);

