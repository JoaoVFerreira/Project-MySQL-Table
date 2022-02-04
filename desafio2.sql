SELECT 
	  COUNT(DISTINCT c.cancao_id) AS cancoes,
    COUNT(DISTINCT art.artista_id) AS artistas,
    COUNT(DISTINCT a.album_id) AS albuns
FROM 
	  SpotifyClone.cancao AS c,
    SpotifyClone.artista AS art,
    SpotifyClone.album AS a
WHERE
	a.artista_id = art.artista_id; 