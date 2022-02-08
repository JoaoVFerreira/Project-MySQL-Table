SELECT
	music.nome AS cancao,
    COUNT(history.cancao_id) AS reproducoes
FROM
	SpotifyClone.cancao AS music
INNER JOIN
	SpotifyClone.historico_reproducao AS history
ON
	music.cancao_id = history.cancao_id
GROUP BY
	music.nome
ORDER BY 
	reproducoes DESC,
	music.nome
LIMIT 2;