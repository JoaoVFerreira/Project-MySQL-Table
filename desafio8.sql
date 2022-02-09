SELECT
	actor.nome AS artista,
    alb.nome_album AS album
FROM
	SpotifyClone.artista AS actor
INNER JOIN
	SpotifyClone.album AS alb
ON
	actor.artista_id = alb.artista_id
GROUP BY 
	alb.album_id
HAVING 
	actor.nome = 'Walter Phoenix';