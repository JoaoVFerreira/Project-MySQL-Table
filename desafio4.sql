SELECT 
	user.nome AS usuario,
    IF(MAX(history.data_reproducao) >= '2021-01-01', 'Usuário ativo','Usuário inativo') AS condicao_usuario
FROM 
	SpotifyClone.usuario AS user
INNER JOIN 
	SpotifyClone.historico_reproducao AS history
ON
	user.usuario_id = history.usuario_id
GROUP BY
	user.nome
ORDER BY
	user.nome;