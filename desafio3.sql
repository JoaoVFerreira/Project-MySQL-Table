SELECT
	user.nome AS usuario,
    COUNT(user.usuario_id) AS qtde_musicas_ouvidas,
    FORMAT(SUM(music.duracao)/60, 2) AS total_minutos
FROM
	SpotifyClone.usuario AS user
INNER JOIN SpotifyClone.historico_reproducao AS history
ON 
	user.usuario_id = history.usuario_id
INNER JOIN SpotifyClone.cancao AS music
ON 
	music.cancao_id = history.cancao_id
	GROUP BY user.usuario_id 
    ORDER BY user.nome;