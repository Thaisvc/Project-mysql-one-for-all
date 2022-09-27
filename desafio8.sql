SELECT SpotifyClone.artistas.artista AS artista, SpotifyClone.albuns.album AS album
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns ON SpotifyClone.artistas.artista_id = 3 AND SpotifyClone.albuns.artista_id = 3
ORDER BY album;