SELECT COUNT(SpotifyClone.historico_de_reproducoes.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes
INNER JOIN SpotifyClone.usuarios 
ON SpotifyClone.historico_de_reproducoes.usuario_id = 1 
AND SpotifyClone.usuarios.usuario_id = 1;

/* #ou 
#SELECT COUNT(SpotifyClone.historico_de_reproducoes.usuario_id) AS quantidade_musicas_no_historico
#FROM SpotifyClone.historico_de_reproducoes 
#JOIN SpotifyClone.usuarios 
#ON SpotifyClone.usuarios .usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id
#WHERE SpotifyClone.usuarios .usuario = 'Barbara Liskov'
#GROUP BY SpotifyClone.usuarios .usuario; */