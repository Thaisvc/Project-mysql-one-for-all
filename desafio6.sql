SELECT MIN(SpotifyClone.planos.valor) AS faturamento_minimo,
MAX(SpotifyClone.planos.valor) AS faturamento_maximo,
ROUND(AVG(SpotifyClone.planos.valor), 2) AS faturamento_medio, 
SUM(SpotifyClone.planos.valor) AS faturamento_total
FROM SpotifyClone.planos
INNER JOIN SpotifyClone.usuarios 
ON SpotifyClone.planos.plano_id = SpotifyClone.usuarios.plano_id;