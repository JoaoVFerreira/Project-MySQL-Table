SELECT
	actor.nome AS artista,
    lib.nome_album AS album,
    COUNT(follow.artista_id) AS seguidores
FROM
	SpotifyClone.artista AS actor
INNER JOIN
	SpotifyClone.album AS lib
ON
	actor.artista_id = lib.artista_id 
INNER JOIN
	SpotifyClone.seguindo_artista AS follow
ON
	lib.artista_id = follow.artista_id
GROUP BY
	lib.album_id
ORDER BY
	seguidores DESC,
	artista,
    album;