SELECT
    A.usuario AS 'usuario', IF(MAX(YEAR(B.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM
    SpotifyClone.usuario AS A
        INNER JOIN
    SpotifyClone.historico AS B
    ON B.usuario_id = A.usuario_id
    GROUP BY A.usuario;