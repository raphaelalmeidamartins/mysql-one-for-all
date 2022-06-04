SELECT
  s.song_name AS nome,
  COUNT(pl.song_id) AS reproducoes
FROM
  SpotifyClone.users AS us
  INNER JOIN SpotifyClone.plays_history AS pl ON pl.user_id = us.user_id
  INNER JOIN SpotifyClone.songs AS s ON s.song_id = pl.song_id
WHERE
  us.plan_id = 1
  OR us.plan_id = 2
GROUP BY
  nome
ORDER BY
  nome;