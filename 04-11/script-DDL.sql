-- criar o banco de dados
create database nota;

-- habiilitar o banco de dados
use nota;

-- excluiir o banco de dados
drop database nota;

-- criar a tabela prova
create table prova(
	idProva 	int not null primary key auto_increment,
	dataProva 	date not null,
    resultado	decimal(9,2)
);

create table questao(
	idQuestao	int not null primary key auto_increment,
	peso 		int,
    descricao 	varchar(255) not null,
    idProva 	int not null, -- chave estrangeiraprova
    foreign key (idProva) references Prova (idProva)
);

CREATE TABLE aluno (
    idAluno 	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome 		VARCHAR(50) NOT NULL,
    numcartao 	INT NOT NULL
);

create table nota(
	idAluno		int not null, -- chave estrangeira
	idQuestao	int not null, -- chave estrangeira
    nota 		decimal(9,2) not null,
    primary key (idAluno, idQuestao) ,-- chave primaria composta
    foreign key (idAluno) references Aluno (idAluno),
	foreign key (idQuestao) references Questao (idQuestao)
);

describe nota;

-- excluir a tabela prova
drop table prova;

-- exibe a estrutura da tabela
describe prova;

