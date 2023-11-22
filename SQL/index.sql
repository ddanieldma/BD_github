/*
A maioria dos índices de nossa base são números e dígitos aleatórios,
o que não seria muito viável ao usuário para fazer uma busca.
Além disso, os nomes dos repositórios, das branches, das pastas e dos arquivos
podem não ser únicos, o que atrapalharia a mecânica de busca do index.
Outro fato é que, para procurar por um desses elementos, o usuário provavelmente procurará
primeiramente pelo usuário para depois explorar seus repositórios e assim por diante.
Assim, concluimos que a melhor tabela para inserirmos um índice é a dos usuários,
na coluna dos IDs. Apesar de serem únicos, não são códigos aleatórios: são nomes tangíveis.
Portanto, selecionamos como ponto crítico a tabela "Usuário".
*/

CREATE INDEX usrname_index ON usuário(usrid);