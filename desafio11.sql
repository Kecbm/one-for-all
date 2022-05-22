SELECT cancao_name AS 'nome_musica',
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(cancao_name, 'Streets', 'Code Review'), 'Her Own', 'Trybe'), 'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 'Pull Request')
AS 'novo_nome'
FROM SpotifyClone.cancao
WHERE cancao_name LIKE '%Streets'
OR cancao_name LIKE '%Her Own'
OR cancao_name LIKE '%Inner Fire'
OR cancao_name LIKE '%Silly'
OR cancao_name LIKE '%Circus'
GROUP BY cancao_name;