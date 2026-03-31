use BigBrotherDev;

insert into temporada (ano) values
(2025),
(2026);

insert into participantes (nome, idade, id_temporada) values
("David", 16, 1),
("Luis Gustavo", 16, 1),
("Isaque", 25, 1),
("Lavinia", 10, 1),
("Rafaela", 15, 1),
("Larissa", 24, 1),
("João Gustavo", 16, 1),
("João Guilherme", 16, 1),
("Gabriel Moreira", 18, 1),
("Julia", 15, 1),
("Isabela", 16, 1),
("Mallcon", 16, 1),
("Arthur", 16, 1),
("Murilo", 16, 1),
("Mirela", 16, 1),
("Gabriel Augusto", 16, 1),
("Ana Carolina", 16, 1),
("Cauã", 16, 1),
("Kauany", 16, 1),
("Garcia", 32, 1),
("Caio", 23, 1),
("Sarah", 16, 1),
("Jõao Vitor", 13, 1),
("Hugo", 16, 1),
("Erick", 16, 1),
("Enzo", 16, 1),
("Alicia", 16, 1),
("Diego", 16, 1),
("Emily", 16, 1),
("Renata", 16, 1),
("Ryan", 16, 1);

insert into paredoes (id_participante1, id_participante2, id_participante3, id_eliminado) values
(11, 22, 16, 11),
(13, 10, 29, 10),
(22, 31, 7, 22),
(13, 29, 25, 29),
(28, 5, 15, 5),
(17, 15, 3, 17),
(27, 15, 24, 27);

insert into lideres (id_temporada, id_participante) values
(1, 27),
(2, 2),
(2, 4),
(2, 1);

insert into anjos (id_temporada, id_participante) values
(1, 26),
(2, 10),
(2, 17),
(2, 26);

insert into campeao (id_temporada, id_participantes) values
(1, 27),
(2, 3);

select nome, idade
from participantes 
where idade <= 16
order by idade asc;

SELECT participantes.nome, paredoes.id_paredao
FROM campeao
JOIN participantes
ON campeao.id_participantes = participantes.id_participantes
JOIN paredoes
ON participantes.id_participantes IN (
	paredoes.id_participante1,
	paredoes.id_participante2,
	paredoes.id_participante3
);

SELECT participantes.nome, campeao.id_campeao
FROM campeao
INNER JOIN participantes
ON campeao.id_participante = participantes.id_participante;

SELECT participantes.nome, paredoes.id_paredao
FROM participantes
LEFT JOIN paredoes
ON participantes.id_participantes = paredoes.id_eliminado
order by id_paredao desc;

SELECT participantes.nome, campeao.id_campeao
FROM campeao
RIGHT JOIN participantes
ON campeao.id_participantes = participantes.id_participantes
ORDER BY id_campeao desc;

SELECT tamporada.ano, campeao.id_campeao
FROM temporada
CROSS JOIN campeao;