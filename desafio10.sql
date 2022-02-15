SELECT 
    song.nome AS nome, COUNT(history.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancao AS song
        INNER JOIN
    SpotifyClone.historico_reproducao AS history ON song.cancao_id = history.cancao_id
        INNER JOIN
    SpotifyClone.usuario AS user ON user.usuario_id = history.usuario_id
        INNER JOIN
    SpotifyClone.plano AS plan ON user.plano_id = plan.plano_id
WHERE
    plan.tipo IN ('gratuito' , 'pessoal')
GROUP BY nome
ORDER BY nome;