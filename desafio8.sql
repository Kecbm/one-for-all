SELECT A.artista AS 'artista',
B.album AS 'album'
FROM SpotifyClone.artista AS A
INNER JOIN SpotifyClone.album AS B ON B.artista_id = A.artista_id
WHERE A.artista = 'Walter Phoenix'
GROUP BY album;