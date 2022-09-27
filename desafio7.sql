SELECT art.artista artista, alb.album album, COUNT(seg.artista_id) seguidores
FROM SpotifyClone.artistas AS art
LEFT JOIN  SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS seg ON seg.artista_id = art.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;