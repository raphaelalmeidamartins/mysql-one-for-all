SELECT
  COUNT(pl.song_id) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.users AS us
  INNER JOIN SpotifyClone.plays_history AS pl ON pl.user_id = us.user_id
WHERE
  us.user_name = 'Bill'
GROUP BY
  us.user_id;