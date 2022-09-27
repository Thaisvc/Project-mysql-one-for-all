SELECT SpotifyClone.usuarios.usuario,
IF(MAX(SpotifyClone.historico_de_reproducoes.data_reproducao) >= '2021-01-01', 'Usuário ativo', 'Usuário inativo') 
AS status_usuario
FROM SpotifyClone.usuarios 
INNER JOIN SpotifyClone.historico_de_reproducoes 
ON SpotifyClone.usuarios.usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id
GROUP BY SpotifyClone.usuarios.usuario
ORDER BY SpotifyClone.usuarios.usuario;