SELECT
  FORMAT(MIN(pl.price), 2) AS faturamento_minimo,
  FORMAT(MAX(pl.price), 2) AS faturamento_maximo,
  FORMAT(AVG(pl.price), 2) AS faturamento_medio,
  FORMAT(SUM(pl.price), 2) AS faturamento_total
FROM
  SpotifyClone.users AS us
  INNER JOIN SpotifyClone.subscription_plans as pl ON pl.plan_id = us.plan_id;