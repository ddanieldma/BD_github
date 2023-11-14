-- Consulta Geral para Recuperar Dados de Alterações em Arquivos e Respectivos Commits

-- Visão geral de todas as alterações em arquivos e os commits
-- associados, sem restrições específicas, permitindo uma análise abrangente da relação
-- commits - alterações em arquivos.

SELECT Commit.CmtID, Commit.CmtMensagem, Arquivo.ArqNome, CmtAlteraArq.AlteracoesTexto, Repositório.RepNome, Branch.BchNome
FROM Commit
JOIN CmtAlteraArq ON Commit.CmtID = CmtAlteraArq.CmtID
JOIN Arquivo ON CmtAlteraArq.ArqID = Arquivo.ArqID
JOIN Branch ON Branch.BchID = Commit.BchID
JOIN Repositório ON Branch.RepID = Repositório.RepID;

--  Consulta para Identificar os Usuários que Mais Realizaram Commits

SELECT FeitoPorUsrID, COUNT(CmtID) AS QuantidadeCommits
FROM Commit
GROUP BY FeitoPorUsrID
ORDER BY QuantidadeCommits DESC;

-- Consulta para Recuperar a Distribuição de Commits ao Longo do Tempo

SELECT DATE(DataCommit) AS Data, COUNT(CmtID) AS QuantidadeCommits
FROM Commit
GROUP BY DATE(DataCommit)
ORDER BY Data;

-- Consulta para Identificar as Branches com Mais Atualizações

SELECT BchID, COUNT(CmtID) AS QuantidadeCommits
FROM Commit
GROUP BY BchID;

-- Consulta para Identificar os Commits que Afetaram Mais Pastas:

SELECT Commit.CmtID, Commit.CmtMensagem, COUNT(DISTINCT CmtAlteraPst.PstID) AS TotalPastasAlteradas
FROM Commit
JOIN CmtAlteraPst ON Commit.CmtID = CmtAlteraPst.CmtID
GROUP BY Commit.CmtID, Commit.CmtMensagem
ORDER BY TotalPastasAlteradas DESC;

--  Consulta para Recuperar a Quantidade de Alterações por Usuário em um Intervalo de Datas
--  Intervalo de exemplo: setembro de 2023

SELECT Commit.FeitoPorUsrID, COUNT(CmtAlteraArq.ArqID) AS QuantidadeAlteracoes
FROM Commit
JOIN CmtAlteraArq ON Commit.CmtID = CmtAlteraArq.CmtID
WHERE Commit.DataCommit BETWEEN '2023-09-01' AND '2023-09-30'
GROUP BY Commit.FeitoPorUsrID
ORDER BY QuantidadeAlteracoes DESC;




