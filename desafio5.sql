SELECT
    A.cancao_name as cancao, COUNT(B.cancao_id) as reproducoes
FROM
    SpotifyClone.cancao AS A
        INNER JOIN
    SpotifyClone.historico AS B
    ON A.cancao_id = B.cancao_id
    GROUP BY A.cancao_name ORDER BY reproducoes DESC, cancao
    LIMIT 2;