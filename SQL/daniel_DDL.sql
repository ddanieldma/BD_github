CREATE TABLE Branch
(
    BchID CHAR(11) NOT NULL PRIMARY KEY,
    RepID CHAR(11) NOT NULL,
    BchNome VARCHAR(30) NOT NULL,
    FOREIGN KEY (RepID) REFERENCES Repositório(RepID)
);

CREATE TABLE Pasta
(
    PstId CHAR(11) NOT NULL PRIMARY KEY,
    BchID CHAR(11) NOT NULL,
    PstNome VARCHAR(100) NOT NULL,
    PertenceAPstID CHAR(11),
    FOREIGN KEY (BchID) REFERENCES Branch(BchID)
);

CREATE TABLE Arquivo
(
    ArqID CHAR(7) NOT NULL PRIMARY KEY,
    PertenceAPstID CHAR(11) NOT NULL,
    ArqCorpo TEXT,
    ArqNome VARCHAR(100) NOT NULL,
    ArqTamanho INT,
    ArqNoLinhas INT,
    FOREIGN KEY (PertenceAPstID) REFERENCES Pasta(PstId)
);
