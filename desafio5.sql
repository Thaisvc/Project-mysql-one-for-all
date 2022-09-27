SELECT C.cancao AS cancao, COUNT(H.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS C
LEFT JOIN  SpotifyClone.historico_de_reproducoes AS H
ON C.cancao_id = H.cancao_id
GROUP BY cancao 
ORDER BY reproducoes DESC, C.cancao
LIMIT 2;
