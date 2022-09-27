SELECT c.cancao AS nome, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
RIGHT JOIN SpotifyClone.usuarios
ON h.usuario_id = SpotifyClone.usuarios.usuario_id
WHERE SpotifyClone.usuarios.plano_id = 1 OR SpotifyClone.usuarios.plano_id = 4
GROUP BY nome
ORDER BY nome;