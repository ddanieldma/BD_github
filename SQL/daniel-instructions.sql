-- Selecionando o tamamnho total de cada pasta
SELECT 
	usr.usrid as usuário, 
	rep.repnome as repositório, 
	bch.bchnome as branch, 
	pst.pstnome as pasta, 
	SUM(arq.arqtamanho) as TamanhoTotalPasta
FROM 
	pasta pst, 
	arquivo arq,
	branch bch, 
	repositório rep,
	usuário usr
WHERE 
	usr.usrid = rep.usrid AND
	bch.repid = rep.repid AND 
	pst.bchid = bch.bchid AND 
	pst.pstid = arq.pertenceapstid
GROUP BY 
	usr.usrid,
	rep.repnome, 
	bch.bchnome, 
	pst.pstnome
ORDER BY 
	TamanhoTotalPasta desc;	

-- Selecionando número total de linhas de cada pasta
SELECT 
	usr.usrid as usuário, 
	rep.repnome as repositório, 
	bch.bchnome as branch, 
	pst.pstnome as pasta, 
	SUM(arq.arqnolinhas) as LinhasTotaisPasta
FROM 
	pasta pst, 
	arquivo arq, 
	branch bch, 
	repositório rep, 
	usuário usr
WHERE 
	usr.usrid = rep.usrid AND 
	bch.repid = rep.repid AND 
	pst.bchid = bch.bchid AND 
	pst.pstid = arq.pertenceapstid
GROUP BY 
	usr.usrid, 
	rep.repnome, 
	bch.bchnome, 
	pst.pstnome
ORDER BY 
	LinhasTotaisPasta desc;