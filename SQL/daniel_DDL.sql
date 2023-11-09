-- Não finalizado
CREATE TABLE Branch
(
    BchID CHAR(11) NOT NULL,
    BchNome VARCHAR(30) NOT NULL,
    UsrID VARCHAR(30) NOT NULL,
    RepID CHAR(11) NOT NULL,
    CommitUsuario VARCHAR(100) NOT NULL,
    CommitTempo 
);

CREATE TABLE Pasta
(
    PstId CHAR(11) NOT NULL,
    PstNome VARCHAR(100) NOT NULL,
    BchID CHAR(11) NOT NULL,
    PertenceAPstID CHAR(11)
);

CREATE TABLE Arquivo
(
    ArqID CHAR(7) NOT NULL,
    ArqCorpo VARCHAR(100000000000000000000),
    ArqNome VARCHAR(100) NOT NULL,
    ArqTamanho INT,
    ArqNoLinhas INT,
    PertenceAPstID CHAR(11) NOT NULL
);