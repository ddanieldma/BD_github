INSERT INTO Usuário VALUES ('PedroPHC25', 'Pedro Henrique Coterli', 'PRO');
INSERT INTO Usuário VALUES ('migasil', 'Miguel da Silva', 'Normal');
INSERT INTO Usuário VALUES ('nicolessouza', 'Nicole dos Santos de Souza', 'PRO');
INSERT INTO Usuário VALUES ('livoliv', 'Lívia de Oliveira', 'Normal');
INSERT INTO Usuário VALUES ('larsan', 'Larissa dos Santos', 'Normal');
INSERT INTO Usuário VALUES ('rafaalv', 'Rafaela Alves', 'PRO');
INSERT INTO Usuário VALUES ('ddanieldma', 'Daniel Miranda', 'PRO');
INSERT INTO Usuário VALUES ('lucper', 'Lucas Pereira', 'Normal');
INSERT INTO Usuário VALUES ('isarod', 'Isabela Rodrigues', 'PRO');
INSERT INTO Usuário VALUES ('gussou', 'Gustavo Souza', 'Normal');

INSERT INTO UsrSegueUsr VALUES ('PedroPHC25', 'migasil');
INSERT INTO UsrSegueUsr VALUES ('PedroPHC25', 'nicolessouza');
INSERT INTO UsrSegueUsr VALUES ('PedroPHC25', 'livoliv');
INSERT INTO UsrSegueUsr VALUES ('migasil', 'PedroPHC25');
INSERT INTO UsrSegueUsr VALUES ('nicolessouza', 'livoliv');
INSERT INTO UsrSegueUsr VALUES ('nicolessouza', 'PedroPHC25');
INSERT INTO UsrSegueUsr VALUES ('nicolessouza', 'rafaalv');
INSERT INTO UsrSegueUsr VALUES ('nicolessouza', 'ddanieldma');
INSERT INTO UsrSegueUsr VALUES ('larsan', 'nicolessouza');
INSERT INTO UsrSegueUsr VALUES ('larsan', 'ddanieldma');
INSERT INTO UsrSegueUsr VALUES ('larsan', 'PedroPHC25');
INSERT INTO UsrSegueUsr VALUES ('larsan', 'isarod');
INSERT INTO UsrSegueUsr VALUES ('larsan', 'gussou');
INSERT INTO UsrSegueUsr VALUES ('rafaalv', 'larsan');
INSERT INTO UsrSegueUsr VALUES ('rafaalv', 'isarod');
INSERT INTO UsrSegueUsr VALUES ('rafaalv', 'gussou');
INSERT INTO UsrSegueUsr VALUES ('rafaalv', 'nicolessouza');
INSERT INTO UsrSegueUsr VALUES ('ddanieldma', 'nicolessouza');
INSERT INTO UsrSegueUsr VALUES ('lucper', 'larsan');
INSERT INTO UsrSegueUsr VALUES ('lucper', 'rafaalv');
INSERT INTO UsrSegueUsr VALUES ('lucper', 'ddanieldma');
INSERT INTO UsrSegueUsr VALUES ('lucper', 'isarod');
INSERT INTO UsrSegueUsr VALUES ('lucper', 'nicolessouza');
INSERT INTO UsrSegueUsr VALUES ('isarod', 'livoliv');
INSERT INTO UsrSegueUsr VALUES ('isarod', 'rafaalv');
INSERT INTO UsrSegueUsr VALUES ('isarod', 'ddanieldma');
INSERT INTO UsrSegueUsr VALUES ('isarod', 'lucper');
INSERT INTO UsrSegueUsr VALUES ('gussou', 'lucper');
INSERT INTO UsrSegueUsr VALUES ('gussou', 'larsan');

INSERT INTO Organização VALUES ('codab', 'Código Aberto', 'codab.com', 'contato@codab.com');
INSERT INTO Organização VALUES ('devuni', 'Desenvolvedores Unidos', 'devuni.com', null);
INSERT INTO Organização VALUES ('FGV EMAp', 'FGV - Escola de Matemática Aplicada', 'http://emap.fgv.br/', 'renato.souza@fgv.br');
INSERT INTO Organização VALUES ('proac', 'Programadores em Ação', null, 'contato@proac.com');
INSERT INTO Organização VALUES ('repocen', 'Repositório Central', 'repocen.com', 'contato@repocen.com');

INSERT INTO OrganizaçãoLinguagens VALUES ('codab', 'Python');
INSERT INTO OrganizaçãoLinguagens VALUES ('codab', 'JavaScript');
INSERT INTO OrganizaçãoLinguagens VALUES ('codab', 'C#');
INSERT INTO OrganizaçãoLinguagens VALUES ('devuni', 'Java');
INSERT INTO OrganizaçãoLinguagens VALUES ('devuni', 'C#');
INSERT INTO OrganizaçãoLinguagens VALUES ('devuni', 'Python');
INSERT INTO OrganizaçãoLinguagens VALUES ('FGV EMAp', 'Shell');
INSERT INTO OrganizaçãoLinguagens VALUES ('FGV EMAp', 'Python');
INSERT INTO OrganizaçãoLinguagens VALUES ('FGV EMAp', 'Jupyter Notebook');
INSERT INTO OrganizaçãoLinguagens VALUES ('proac', 'C++');
INSERT INTO OrganizaçãoLinguagens VALUES ('proac', 'JavaScript');
INSERT INTO OrganizaçãoLinguagens VALUES ('proac', 'Python');
INSERT INTO OrganizaçãoLinguagens VALUES ('repocen', 'JavaScript');
INSERT INTO OrganizaçãoLinguagens VALUES ('repocen', 'C#');
INSERT INTO OrganizaçãoLinguagens VALUES ('repocen', 'Python');

INSERT INTO UsrSegueOrg VALUES ('PedroPHC25', 'devuni');
INSERT INTO UsrSegueOrg VALUES ('PedroPHC25', 'FGV EMAp');
INSERT INTO UsrSegueOrg VALUES ('PedroPHC25', 'repocen');
INSERT INTO UsrSegueOrg VALUES ('migasil', 'proac');
INSERT INTO UsrSegueOrg VALUES ('nicolessouza', 'devuni');
INSERT INTO UsrSegueOrg VALUES ('nicolessouza', 'FGV EMAp');
INSERT INTO UsrSegueOrg VALUES ('livoliv', 'proac');
INSERT INTO UsrSegueOrg VALUES ('livoliv', 'repocen');
INSERT INTO UsrSegueOrg VALUES ('larsan', 'devuni');
INSERT INTO UsrSegueOrg VALUES ('rafaalv', 'repocen');
INSERT INTO UsrSegueOrg VALUES ('gussou', 'FGV EMAp');
INSERT INTO UsrSegueOrg VALUES ('gussou', 'proac');
INSERT INTO UsrSegueOrg VALUES ('gussou', 'repocen');

INSERT INTO UsrPertenceAOrg VALUES ('PedroPHC25', 'FGV EMAp');
INSERT INTO UsrPertenceAOrg VALUES ('migasil', 'codab');
INSERT INTO UsrPertenceAOrg VALUES ('migasil', 'devuni');
INSERT INTO UsrPertenceAOrg VALUES ('nicolessouza', 'FGV EMAp');
INSERT INTO UsrPertenceAOrg VALUES ('nicolessouza', 'codab');
INSERT INTO UsrPertenceAOrg VALUES ('nicolessouza', 'proac');
INSERT INTO UsrPertenceAOrg VALUES ('larsan', 'codab');
INSERT INTO UsrPertenceAOrg VALUES ('larsan', 'proac');
INSERT INTO UsrPertenceAOrg VALUES ('rafaalv', 'proac');
INSERT INTO UsrPertenceAOrg VALUES ('ddanieldma', 'FGV EMAp');
INSERT INTO UsrPertenceAOrg VALUES ('ddanieldma', 'devuni');
INSERT INTO UsrPertenceAOrg VALUES ('ddanieldma', 'repocen');
INSERT INTO UsrPertenceAOrg VALUES ('isarod', 'devuni');
INSERT INTO UsrPertenceAOrg VALUES ('isarod', 'repocen');
INSERT INTO UsrPertenceAOrg VALUES ('gussou', 'repocen');

INSERT INTO Repositório VALUES ('R9083745612', 'Synergy-Dynamic-Program', 'PedroPHC25', 'Privado', 'Sistema de colaboração online avançado.');
INSERT INTO Repositório VALUES ('R2468109753', 'Zen', 'PedroPHC25', 'Privado', null);
INSERT INTO Repositório VALUES ('R7325491860', 'Zen', 'migasil', 'Público', null);
INSERT INTO Repositório VALUES ('R6152039478', 'Canary-Casanova-Cascade', 'ddanieldma', 'Público', 'Sistema de detecção de ameaças cibernéticas inspirado nos canários.');
INSERT INTO Repositório VALUES ('R3492876105', 'Batman-Bender-Project', 'nicolessouza', 'Público', 'Um robô inspirado no Batman para tarefas domésticas e emergências.');

INSERT INTO RepositórioLinguagens VALUES ('R9083745612', 'Python', 100);
INSERT INTO RepositórioLinguagens VALUES ('R2468109753', 'JavaScript', 30);
INSERT INTO RepositórioLinguagens VALUES ('R2468109753', 'C++', 40);
INSERT INTO RepositórioLinguagens VALUES ('R2468109753', 'Java', 30);
INSERT INTO RepositórioLinguagens VALUES ('R7325491860', 'Java', 60);
INSERT INTO RepositórioLinguagens VALUES ('R7325491860', 'C#', 40);
INSERT INTO RepositórioLinguagens VALUES ('R6152039478', 'Shell', 100);
INSERT INTO RepositórioLinguagens VALUES ('R3492876105', 'C++', 100);

INSERT INTO UsrFazForkRep VALUES ('nicolessouza', 'R9083745612');
INSERT INTO UsrFazForkRep VALUES ('isarod', 'R3492876105');
INSERT INTO UsrFazForkRep VALUES ('livoliv', 'R7325491860');
INSERT INTO UsrFazForkRep VALUES ('livoliv', 'R6152039478');
INSERT INTO UsrFazForkRep VALUES ('livoliv', 'R3492876105');
INSERT INTO UsrFazForkRep VALUES ('gussou', 'R7325491860');
INSERT INTO UsrFazForkRep VALUES ('gussou', 'R3492876105');
INSERT INTO UsrFazForkRep VALUES ('nicolessouza', 'R2468109753');
INSERT INTO UsrFazForkRep VALUES ('lucper', 'R2468109753');
INSERT INTO UsrFazForkRep VALUES ('rafaalv', 'R6152039478');
INSERT INTO UsrFazForkRep VALUES ('nicolessouza', 'R6152039478');
INSERT INTO UsrFazForkRep VALUES ('livoliv', 'R9083745612');

INSERT INTO UsrContribuiRep VALUES ('PedroPHC25', 'R9083745612');
INSERT INTO UsrContribuiRep VALUES ('nicolessouza', 'R9083745612');
INSERT INTO UsrContribuiRep VALUES ('livoliv', 'R9083745612');
INSERT INTO UsrContribuiRep VALUES ('PedroPHC25', 'R2468109753');
INSERT INTO UsrContribuiRep VALUES ('migasil', 'R2468109753');
INSERT INTO UsrContribuiRep VALUES ('migasil', 'R7325491860');
INSERT INTO UsrContribuiRep VALUES ('livoliv', 'R7325491860');
INSERT INTO UsrContribuiRep VALUES ('ddanieldma', 'R6152039478');
INSERT INTO UsrContribuiRep VALUES ('nicolessouza', 'R3492876105');
INSERT INTO UsrContribuiRep VALUES ('isarod', 'R3492876105');
INSERT INTO UsrContribuiRep VALUES ('livoliv', 'R3492876105');
INSERT INTO UsrContribuiRep VALUES ('gussou', 'R3492876105');

-- BchID, RepID, BchNome
INSERT INTO Branch VALUES ('B4829105732', 'R9083745612', 'main');
INSERT INTO Branch VALUES ('B6712084956', 'R9083745612', 'feature');
INSERT INTO Branch VALUES ('B3590248167', 'R2468109753', 'main');
INSERT INTO Branch VALUES ('B1245678903', 'R7325491860', 'main');
INSERT INTO Branch VALUES ('B9876543210', 'R6152039478', 'main');
INSERT INTO Branch VALUES ('B8765432109', 'R3492876105', 'main');
INSERT INTO Branch VALUES ('B2345678901', 'R3492876105', 'bugfix');

-- PstId, BchID, PstNome, PertenceAPstID
INSERT INTO Pasta VALUES ('P8901245673', 'B4829105732', 'root');
INSERT INTO Pasta VALUES ('P4567890123', 'B4829105732', 'modules', 'P8901245673');
INSERT INTO Pasta VALUES ('P3210987654', 'B4829105732', 'docs', 'P8901245673');
INSERT INTO Pasta VALUES ('P9876543210', 'B6712084956', 'root');
INSERT INTO Pasta VALUES ('P2345678901', 'B6712084956', 'modules', 'P9876543210');
INSERT INTO Pasta VALUES ('P5678901234', 'B3590248167', 'root');
INSERT INTO Pasta VALUES ('P1098765432', 'B1245678903', 'root');
INSERT INTO Pasta VALUES ('P8765432109', 'B1245678903', 'code', 'P1098765432');
INSERT INTO Pasta VALUES ('P5432109876', 'B1245678903', 'java', 'P8765432109');
INSERT INTO Pasta VALUES ('P2109876543', 'B1245678903', 'cs', 'P8765432109');
INSERT INTO Pasta VALUES ('P4321098765', 'B9876543210', 'root');
INSERT INTO Pasta VALUES ('P7654321098', 'B8765432109', 'root');
INSERT INTO Pasta VALUES ('P8765432101', 'B8765432109', 'src', 'P7654321098');
INSERT INTO Pasta VALUES ('P8901234567', 'B8765432109', 'include', 'P7654321098');
INSERT INTO Pasta VALUES ('P7854209620', 'B2345678901', 'root');
INSERT INTO Pasta VALUES ('P6789012345', 'B2345678901', 'src', 'P7854209620');
INSERT INTO Pasta VALUES ('P1234509876', 'B2345678901', 'include', 'P7854209620');

-- ArqID, PertenceAPstID, ArqCorpo, ArqNome, ArqTamanho, ArqNoLinhas
INSERT INTO Arquivo VALUES ('a3b9c7d', 'P4567890123', 'corpoArq', 'main.py', 5, 7);
INSERT INTO Arquivo VALUES ('x8y2z1k', 'P4567890123', 'corpoArq', 'utils.py', 50, 400);
INSERT INTO Arquivo VALUES ('m6n4p0q', 'P3210987654', 'corpoArq', 'docs.md', 40, 300);
INSERT INTO Arquivo VALUES ('r7s2t8u', 'P2345678901', 'corpoArq', 'feature.py', 20, 200);
INSERT INTO Arquivo VALUES ('h1j3k5l', 'P2345678901', 'corpoArq', 'test-feature.py', 20, 200);
INSERT INTO Arquivo VALUES ('v9w0x6y', 'P5678901234', 'corpoArq', 'coding-js.js', 60, 400);
INSERT INTO Arquivo VALUES ('e4f2g8h', 'P5678901234', 'corpoArq', 'coding-java.java', 20, 100);
INSERT INTO Arquivo VALUES ('l0m9n7o', 'P5678901234', 'corpoArq', 'coding-cpp.cpp', 5, 70);
INSERT INTO Arquivo VALUES ('p5q1r3s', 'P5432109876', 'corpoArq', 'coding-java.java', 20, 100);
INSERT INTO Arquivo VALUES ('z6a8b7c', 'P5432109876', 'corpoArq', 'testing-java.java', 20, 100);
INSERT INTO Arquivo VALUES ('t2u4v0w', 'P2109876543', 'corpoArq', 'coding-cs.cs', 70, 500);
INSERT INTO Arquivo VALUES ('n9o1p3q', 'P2109876543', 'corpoArq', 'testing-cs.cs', 70, 500);
INSERT INTO Arquivo VALUES ('f7g5h2j', 'P4321098765', 'corpoArq', 'ccc.shell', 150, 1000);
INSERT INTO Arquivo VALUES ('k6l8m0n', 'P8765432101', 'corpoArq', 'functions1.cpp', 87, 570);
INSERT INTO Arquivo VALUES ('y4z1x3w', 'P8765432101', 'corpoArq', 'functions2.cpp', 50, 300);
INSERT INTO Arquivo VALUES ('u2v9s7t', 'P5432109876', 'corpoArq', 'include1.h', 10, 50);
INSERT INTO Arquivo VALUES ('d5e0f1g', 'P5432109876', 'corpoArq', 'include2.h', 8, 25);
INSERT INTO Arquivo VALUES ('r3p6q2k', 'P6789012345', 'corpoArq', 'functions1.cpp', 87, 570);
INSERT INTO Arquivo VALUES ('b8h7i9j', 'P6789012345', 'corpoArq', 'functions2.cpp', 55, 333);
INSERT INTO Arquivo VALUES ('c4x5y1z', 'P6789012345', 'corpoArq', 'test.cpp', 10, 50);
INSERT INTO Arquivo VALUES ('o6i8u4t', 'P1234509876', 'corpoArq', 'include1.h', 10, 50);
INSERT INTO Arquivo VALUES ('g9f1e3d', 'P1234509876', 'corpoArq', 'include2.h', 8, 25);

-- Inserindo dados na tabela Commit
INSERT INTO Commit (CmtID, CmtMensagem, NoArqAlterados, NoAdicoes, NoRemocoes, DataCommit, FeitoPorUsrID, BchID)
VALUES
('24be65682406e6b5d19c4cc7f6351a954f8d105b', 'Correção de bug no main.py', 1, 5, 2, '2023-09-26 10:00:00', 'nicolessouza', 'B4829105732'),
('a78ef59c40b1d480e95f9c36747c1ce3f7ff0f9f', 'Adição de funcionalidade', 2, 10, 3, '2023-09-25 14:30:00', 'PedroPHC25', 'B6712084956'),
('42b2a71dd09540dabf67a0d4ad5f6ba7582d29eb', 'Melhorias no código Java', 3, 15, 1, '2023-09-19 09:45:00', 'migasil', 'B3590248167'),
('8a05841b24c32ee0a8a4ad6168b888dbbdfcfbc6', 'Atualização de documentação', 1, 7, 0, '2023-09-12 16:20:00', 'PedroPHC25', 'B4829105732'),
('6d92ed2e5d96c7a46e74b6846c864c83e573b720', 'Nova funcionalidade', 2, 20, 5, '2023-09-05 11:10:00', 'nicolessouza', 'B2345678901'),
('0538b282f833bf9b264f903f3f8e88c6d16ed729', 'Correção de bug no CSS', 1, 5, 2, '2023-08-15 08:00:00', 'migasil', 'B1245678903'),
('a1d4898320f01d875ea080b60c60ecf6016bf466', 'Atualização de funções C++', 2, 12, 4, '2023-08-10 17:30:00', 'nicolessouza', 'B8765432109'),
('5c5aee6f726067b3dbacbe3d215f54b00296b12c', 'Adição de testes', 1, 8, 3, '2023-07-20 14:15:00', 'nicolessouza', 'B2345678901'),
('c24d06b66712cb1f731e62d0819dbf5b3b90e894', 'Correção de bug no Java', 1, 6, 1, '2023-06-10 09:30:00', 'migasil', 'B1245678903'),
('0b88a2f33b758b38ebbf263bb15e4f46b45e37ef', 'Início do projeto', 0, 0, 0, '2023-03-15 10:45:00', 'ddanieldma', 'B9876543210');

-- Inserindo dados na tabela CmtAlteraPst
INSERT INTO CmtAlteraPst (PstID, CmtID)
VALUES
('P4567890123', '24be65682406e6b5d19c4cc7f6351a954f8d105b'),
('P2345678901', 'a78ef59c40b1d480e95f9c36747c1ce3f7ff0f9f'),
('P5678901234', '42b2a71dd09540dabf67a0d4ad5f6ba7582d29eb'),
('P3210987654', '8a05841b24c32ee0a8a4ad6168b888dbbdfcfbc6'),
('P6789012345', '6d92ed2e5d96c7a46e74b6846c864c83e573b720'),
('P1098765432', '0538b282f833bf9b264f903f3f8e88c6d16ed729'),
('P8765432101', 'a1d4898320f01d875ea080b60c60ecf6016bf466'),
('P1234509876', '5c5aee6f726067b3dbacbe3d215f54b00296b12c'),
('P1098765432', 'c24d06b66712cb1f731e62d0819dbf5b3b90e894'),
('P4321098765', '0b88a2f33b758b38ebbf263bb15e4f46b45e37ef');

-- Inserindo dados na tabela CmtAlteraArq
INSERT INTO CmtAlteraArq (CmtID, ArqID, AlteracoesTexto)
VALUES
('24be65682406e6b5d19c4cc7f6351a954f8d105b', 'a3b9c7d', 'alteracoesTexto'),
('a78ef59c40b1d480e95f9c36747c1ce3f7ff0f9f', 'r7s2t8u', 'alteracoesTexto'),
('42b2a71dd09540dabf67a0d4ad5f6ba7582d29eb', 'v9w0x6y', 'alteracoesTexto'),
('8a05841b24c32ee0a8a4ad6168b888dbbdfcfbc6', 'm6n4p0q', 'alteracoesTexto'),
('6d92ed2e5d96c7a46e74b6846c864c83e573b720', 'r3p6q2k', 'alteracoesTexto'),
('a1d4898320f01d875ea080b60c60ecf6016bf466', 'k6l8m0n', 'alteracoesTexto'),
('5c5aee6f726067b3dbacbe3d215f54b00296b12c', 'o6i8u4t', 'alteracoesTexto'),
('c24d06b66712cb1f731e62d0819dbf5b3b90e894', 'e4f2g8h', 'alteracoesTexto'),
('0b88a2f33b758b38ebbf263bb15e4f46b45e37ef', 'f7g5h2j', 'alteracoesTexto'),
('24be65682406e6b5d19c4cc7f6351a954f8d105b', 'x8y2z1k', 'alteracoesTexto'),
('a78ef59c40b1d480e95f9c36747c1ce3f7ff0f9f', 'h1j3k5l', 'alteracoesTexto'),
('42b2a71dd09540dabf67a0d4ad5f6ba7582d29eb', 'l0m9n7o', 'alteracoesTexto'),
('6d92ed2e5d96c7a46e74b6846c864c83e573b720', 'b8h7i9j', 'alteracoesTexto'),
('a1d4898320f01d875ea080b60c60ecf6016bf466', 'y4z1x3w', 'alteracoesTexto'),
('5c5aee6f726067b3dbacbe3d215f54b00296b12c', 'g9f1e3d', 'alteracoesTexto');