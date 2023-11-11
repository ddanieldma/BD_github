CREATE TABLE Commit (
    CmtID VARCHAR(40) PRIMARY KEY,
    CmtMensagem TEXT NOT NULL,
    NoArqAlterados INT NOT NULL,
    NoAdicoes INT NOT NULL,
    NoRemocoes INT NOT NULL,
    DataCommit TIMESTAMP NOT NULL,
    FeitoPorUsrID VARCHAR(30) NOT NULL,
    BchNome VARCHAR(50) NOT NULL,
    RepID CHAR(11) NOT NULL,
    FOREIGN KEY (FeitoPorUsrID) REFERENCES Usuário(UsrID),
    /* FOREIGN KEY (BchNome) REFERENCES Branch(BchNome), */
    FOREIGN KEY (RepID) REFERENCES Repositório(RepID)
);

CREATE TABLE CmtAlteraPst(
    RepID CHAR(11) NOT NULL,
    BchNome VARCHAR(50) NOT NULL,
    PstNome VARCHAR(50) NOT NULL,
    CmtID VARCHAR(40) NOT NULL,
    PRIMARY KEY (RepID, BchNome, PstNome, CmtID),
    FOREIGN KEY (RepID) REFERENCES Repositório(RepID),
    /* FOREIGN KEY (BchNome) REFERENCES Branch(BchNome),
    FOREIGN KEY (PstNome) REFERENCES Pasta(PstNome), */
    FOREIGN KEY (CmtID) REFERENCES Commit(CmtID)
);

CREATE TABLE CmtAlteraArq(
    CmtID VARCHAR(40) NOT NULL,
    ArqID VARCHAR(30) NOT NULL,
    AlteracoesTexto TEXT NOT NULL,
    PRIMARY KEY (CmtID, ArqID),
    FOREIGN KEY (CmtID) REFERENCES Commit(CmtID)
    /*, FOREIGN KEY (ArqID) REFERENCES Arquivo(ArqID) */
);

