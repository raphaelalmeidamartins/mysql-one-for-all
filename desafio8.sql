SELECT
  art.artist_name AS artista,
  alb.album_name AS album
FROM
  SpotifyClone.artists AS art
  INNER JOIN SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
WHERE
  art.artist_name = 'Walter Phoenix'
ORDER BY
  album;