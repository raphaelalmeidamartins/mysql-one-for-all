SELECT
  us.user_name AS usuario,
  IF(
    MAX(pl.date) > '2020-12-31',
    'Usuário ativo',
    'Usuário inativo'
  ) AS condicao_usuario
FROM
  SpotifyClone.users AS us
  INNER JOIN SpotifyClone.plays_history AS pl ON us.user_id = pl.user_id
GROUP BY
  usuario
ORDER BY
  usuario;