SELECT
  art.artist_name AS artista,
  alb.album_name AS album,
  COUNT(fol.user_id) AS seguidores
FROM
  SpotifyClone.artists AS art
  INNER JOIN SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
  INNER JOIN SpotifyClone.followers AS fol ON fol.artist_id = art.artist_id
GROUP BY
  art.artist_name,
  album_name
ORDER BY
  seguidores DESC,
  artista,
  album;