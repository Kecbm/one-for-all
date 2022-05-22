SELECT C.cancao_name AS 'nome', COUNT(B.usuario_id) AS 'reproducoes'
FROM SpotifyClone.usuario AS A
INNER JOIN SpotifyClone.historico AS B ON B.usuario_id = A.usuario_id
INNER JOIN SpotifyClone.cancao AS C ON B.cancao_id = C.cancao_id
WHERE A.plano_id = 1 OR A.plano_id = 4
GROUP BY nome;