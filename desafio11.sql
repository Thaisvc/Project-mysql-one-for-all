SELECT SpotifyClone.cancoes.cancao AS nome_musica,
CASE
	WHEN  SpotifyClone.cancoes.cancao LIKE '%Bard%' THEN REPLACE( SpotifyClone.cancoes.cancao, 'Bard', 'QA')
	WHEN  SpotifyClone.cancoes.cancao LIKE '%Amar%' THEN REPLACE( SpotifyClone.cancoes.cancao, 'Amar', 'Code Review')
	WHEN  SpotifyClone.cancoes.cancao LIKE '%Pais%' THEN REPLACE( SpotifyClone.cancoes.cancao, 'Pais', 'Pull Requests')
	WHEN  SpotifyClone.cancoes.cancao LIKE '%SOUL%' THEN REPLACE( SpotifyClone.cancoes.cancao, 'SOUL', 'CODE')
	WHEN  SpotifyClone.cancoes.cancao LIKE '%SUPERSTAR%' THEN REPLACE( SpotifyClone.cancoes.cancao, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.cancoes
HAVING nome_musica <> novo_nome
ORDER BY nome_musica DESC;