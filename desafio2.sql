SELECT
    COUNT(DISTINCT A.cancao_id) as 'cancoes', COUNT(DISTINCT B.artista_id) as 'artistas', COUNT(DISTINCT A.album_id) as 'albuns'
FROM
    SpotifyClone.cancao AS A
        INNER JOIN
    SpotifyClone.artista AS B;