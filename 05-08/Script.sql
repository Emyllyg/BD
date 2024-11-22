-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE CLIENTE (
	IDCliente 		Int  NOT NULL PRIMARY KEY,
	Nome 			Varchar(50) NOT NULL,
	Endereco 		Varchar(30) NOT NULL,
	Telefone 		Varchar(15) NOT NULL,
	Email 			Varchar(100) NOT NULL 
);

CREATE TABLE PRODUTO (
	IDProduto 		Int  NOT NULL PRIMARY KEY,
	Nome 			Varchar(50) NOT NULL,
	Descricao 		Varchar(100) NOT NULL,
	Preco 			Decimal(9,2) NOT NULL,
	Estoque 		Int NOT NULL 
);

CREATE TABLE ITEM_PEDIDO (
	IDItem 			Int  NOT NULL PRIMARY KEY,
	IDProduto 		Int NOT NULL, -- chave estrangeira referenciando Pedido
	IDPedido 		Int NOT NULL, -- chave estrangeira referenciando Pedido
	Quantidade 		Int NOT NULL,
	PrecoUnitario 	Decimal(9,2) NOT NULL,
	FOREIGN KEY(IDProduto) REFERENCES PRODUTO (IDProduto),
	FOREIGN KEY(IDPedido) REFERENCES PEDIDO (IDPedido)
);


CREATE TABLE PEDIDO (
	IDPedido 		Int PRIMARY KEY,
	IDCliente 		Int NOT NULL, -- chave estrangeira referenciando Cliente
	DataPedido 		Date NOT NULL,
	Status 			Varchar(20) NOT NULL,
	FOREIGN KEY(IDCliente) REFERENCES CLIENTE (IDCliente)
);

CREATE TABLE FATURA (
	IDFatura 		Int PRIMARY KEY,
	IDPedido 		Int NOT NULL, -- chave estrangeira referenciando Pedido
	DataFatrua 		Date NOT NULL,
	ValorTotal 		Decimal(9,2) NOT NULL,
	FOREIGN KEY(IDPedido) REFERENCES PEDIDO (IDPedido)
);

