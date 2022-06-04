SELECT
  ROUND(MIN(pl.price), 2) AS faturamento_minimo,
  ROUND(MAX(pl.price), 2) AS faturamento_maximo,
  ROUND(AVG(pl.price), 2) AS faturamento_medio,
  ROUND(SUM(pl.price), 2) AS faturamento_total
FROM
  SpotifyClone.users AS us
  INNER JOIN SpotifyClone.subscription_plans as pl ON pl.plan_id = us.plan_id;