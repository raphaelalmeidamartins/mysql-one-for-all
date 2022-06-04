SELECT
  COUNT(DISTINCT son.song_id) AS cancoes,
  COUNT(DISTINCT art.artist_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
FROM
  SpotifyClone.songs AS son,
  SpotifyClone.artists AS art,
  SpotifyClone.albums AS alb;