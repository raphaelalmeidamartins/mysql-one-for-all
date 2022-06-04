SELECT
  us.user_name AS usuario,
  COUNT(DISTINCT pl.song_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(s.seconds_length / 60), 2) AS total_minutos
FROM
  SpotifyClone.users AS us
  INNER JOIN SpotifyClone.plays_history AS pl ON pl.user_id = us.user_id
  INNER JOIN SpotifyClone.songs AS s ON pl.song_id = s.song_id
GROUP BY
  us.user_name
ORDER BY
  us.user_name;