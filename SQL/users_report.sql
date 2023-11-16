/*
Essa instrução retorna uma tabela relatório com o número de repositórios,
de forks e de contribuições de cada usuário
*/

\set QUIET on

CREATE VIEW rep_por_usr AS 
SELECT U.usrid, count(R.usrid) AS no_de_repositórios 
FROM usuário U 
LEFT JOIN repositório R 
ON U.usrid = R.usrid 
GROUP BY (U.usrid);

CREATE VIEW fork_por_usr AS 
SELECT U.usrid, count(F.feitoporusrid) AS no_de_forks 
FROM usuário U
LEFT JOIN usrfazforkrep F 
ON U.usrid = F.feitoporusrid 
GROUP BY (U.usrid);

CREATE VIEW cont_por_usr AS 
SELECT U.usrid, count(C.contribuidoporusrid) AS no_de_contribuições 
FROM usuário U
LEFT JOIN usrcontribuirep C 
ON U.usrid = C.contribuidoporusrid
GROUP BY (U.usrid);

SELECT R.usrid, no_de_repositórios, no_de_forks, no_de_contribuições
FROM rep_por_usr R, fork_por_usr F, cont_por_usr C
WHERE R.usrid = F.usrid AND F.usrid = C.usrid;

DROP VIEW rep_por_usr, fork_por_usr, cont_por_usr;