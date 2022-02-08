SELECT 
	FORMAT(MIN(plan.valor), 2) AS faturamento_minimo,
    FORMAT(MAX(plan.valor), 2) AS faturamento_maximo,
    FORMAT(AVG(plan.valor), 2) AS faturamento_medio,
    FORMAT(SUM(plan.valor), 2) AS faturamento_total
FROM
	SpotifyClone.plano AS plan
INNER JOIN
	SpotifyClone.usuario AS user
ON
	user.plano_id = plan.plano_id;