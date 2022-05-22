SELECT A.artista AS 'artista',
B.album AS 'album',
COUNT(C.usuario_id) AS 'seguidores'
FROM SpotifyClone.artista AS A
INNER JOIN SpotifyClone.album AS B ON B.artista_id = A.artista_id
INNER JOIN SpotifyClone.seguindo AS C ON C.artista_id = A.artista_id
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;