SELECT COUNT(B.cancao_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.usuario AS A
INNER JOIN SpotifyClone.historico AS B ON B.usuario_id = A.usuario_id
WHERE A.usuario = 'Bill';