CREATE TABLE Usuário
(
    UsrID VARCHAR(30) NOT NULL,
    UsrNome VARCHAR(100) NOT NULL,
    TipoDeConta VARCHAR(6) NOT NULL,
    PRIMARY KEY (UsrID)
);

CREATE TABLE UsrSegueUsr
(
    UsrID VARCHAR(30) NOT NULL,
    SeguidoPorUsrID VARCHAR(30) NOT NULL,
    PRIMARY KEY (UsrID, SeguidoPorUsrID),
    FOREIGN KEY (UsrID) REFERENCES Usuário(UsrID),
    FOREIGN KEY (SeguidoPorUsrID) REFERENCES Usuário(UsrID)
);

CREATE TABLE Organização
(
    OrgID VARCHAR(30) NOT NULL,
    OrgNome VARCHAR(100) NOT NULL,
    OrgSite VARCHAR(50),
    OrgEmail VARCHAR(50),
    PRIMARY KEY (OrgID)
);

CREATE TABLE OrganizaçãoLinguagens
(
    OrgID VARCHAR(30) NOT NULL,
    OrgLinguagens VARCHAR(30) NOT NULL,
    PRIMARY KEY (OrgID, OrgLinguagens),
    FOREIGN KEY (OrgID) REFERENCES Organização(OrgID)
);

CREATE TABLE UsrSegueOrg
(
    UsrID VARCHAR(30) NOT NULL,
    OrgID VARCHAR(30) NOT NULL,
    PRIMARY KEY (UsrID, OrgID),
    FOREIGN KEY (UsrID) REFERENCES Usuário(UsrID),
    FOREIGN KEY (OrgID) REFERENCES Organização(OrgID)
);

CREATE TABLE UsrPertenceAOrg
(
    UsrID VARCHAR(30) NOT NULL,
    OrgID VARCHAR(30) NOT NULL,
    PRIMARY KEY (UsrID, OrgID),
    FOREIGN KEY (UsrID) REFERENCES Usuário(UsrID),
    FOREIGN KEY (OrgID) REFERENCES Organização(OrgID)
);

-- Alterei a tabela Repositório colocando um novo RepID composto pela letra R e por 10 dígitos, colocando o 
-- antigo RepID como RepNome e tirando o UsrID da composição da chave
CREATE TABLE Repositório
(
    RepID CHAR(11) NOT NULL,
    RepNome VARCHAR(50) NOT NULL,
    UsrID VARCHAR(30) NOT NULL,
    RepVisibilidade CHAR(7) NOT NULL,
    RepDescrição VARCHAR(200),
    PRIMARY KEY (RepID),
    FOREIGN KEY (UsrID) REFERENCES Usuário(UsrID)
);

-- Alterei as tabelas RepositórioLinguagens, UsrFazForkRep e UsrContribuiRep apagando a coluna UsrID 
-- (não é mais necessária, já que agora o RepID é único por si só) e mudando o RepID do antigo para o novo
CREATE TABLE RepositórioLinguagens
(
    RepID CHAR(11) NOT NULL,
    Linguagem VARCHAR(30) NOT NULL,
    Porcentagem INT NOT NULL,
    PRIMARY KEY (RepID, Linguagem),
    FOREIGN KEY (RepID) REFERENCES Repositório(RepID)
);

CREATE TABLE UsrFazForkRep
(
    FeitoPorUsrID VARCHAR(30) NOT NULL,
    RepID CHAR(11) NOT NULL,
    PRIMARY KEY (FeitoPorUsrID, RepID),
    FOREIGN KEY (FeitoPorUsrID) REFERENCES Usuário(UsrID),
    FOREIGN KEY (RepID) REFERENCES Repositório(RepID)
);

CREATE TABLE UsrContribuiRep
(
    ContribuidoPorUsrID VARCHAR(30) NOT NULL,
    RepID CHAR(11) NOT NULL,
    PRIMARY KEY (ContribuidoPorUsrID, RepID),
    FOREIGN KEY (ContribuidoPorUsrID) REFERENCES Usuário(UsrID),
    FOREIGN KEY (RepID) REFERENCES Repositório(RepID)
);

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

CREATE TABLE Commit (
    CmtID VARCHAR(40) PRIMARY KEY,
    CmtMensagem TEXT NOT NULL,
    NoArqAlterados INT NOT NULL,
    NoAdicoes INT NOT NULL,
    NoRemocoes INT NOT NULL,
    -- DataCommit TIMESTAMP NOT NULL,
    FeitoPorUsrID VARCHAR(30) NOT NULL,
    BchID VARCHAR(11) NOT NULL,
    FOREIGN KEY (FeitoPorUsrID) REFERENCES Usuário(UsrID),
    FOREIGN KEY (BchID) REFERENCES Branch(BchID)
);

CREATE TABLE CmtAlteraPst(
    PstID VARCHAR(11) NOT NULL,
    CmtID VARCHAR(40) NOT NULL,
    PRIMARY KEY (PstID, CmtID),
    FOREIGN KEY (PstID) REFERENCES Pasta(PstID),
    FOREIGN KEY (CmtID) REFERENCES Commit(CmtID)
);

CREATE TABLE CmtAlteraArq(
    CmtID VARCHAR(40) NOT NULL,
    ArqID VARCHAR(7) NOT NULL,
    AlteracoesTexto TEXT NOT NULL,
    PRIMARY KEY (CmtID, ArqID),
    FOREIGN KEY (CmtID) REFERENCES Commit(CmtID),
    FOREIGN KEY (ArqID) REFERENCES Arquivo(ArqID)
);