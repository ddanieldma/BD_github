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