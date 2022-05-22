SELECT A.usuario AS 'usuario',
COUNT(B.cancao_id) AS 'qtde_musicas_ouvidas',
ROUND(SUM(C.duracao_segundos) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.usuario AS A
INNER JOIN SpotifyClone.historico AS B ON B.usuario_id = A.usuario_id
INNER JOIN SpotifyClone.cancao AS C ON B.cancao_id = C.cancao_id
GROUP BY A.usuario ASC;