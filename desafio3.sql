SELECT SpotifyClone.usuarios.usuario AS usuario, 
COUNT(SpotifyClone.historico_de_reproducoes.usuario_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(SpotifyClone.cancoes.duracao) / 60, 2) AS total_minutos 
FROM SpotifyClone.usuarios 
INNER JOIN SpotifyClone.historico_de_reproducoes 
ON SpotifyClone.usuarios.usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id
INNER JOIN SpotifyClone.cancoes 
ON SpotifyClone.cancoes.cancao_id = SpotifyClone.historico_de_reproducoes.cancao_id 
GROUP BY usuario 
ORDER BY usuario;

