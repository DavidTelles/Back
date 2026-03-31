show databases; -- ver todos os bancos do servidor
drop database copa_do_mundo; -- apaga o banco de dados

use copa_do_mundo; -- selecionar o banco de dado
show tables; -- mostra as tabelas do banco selecionado
desc grupos; -- mostra as configs da tabela

insert into grupos(nome)
values ("A"),
	   ("B"),
       ("C"),
	   ("D"),
       ("E"),
	   ("F"),
       ("G"),
       ("H"),
       ("I"),
       ("J"),
       ("K"),
       ("L");
select * from grupos;

insert into selecoes(nome, qtd_copa_vencida, id_grupo)
values ("México", 0, 1),
	   ("África do Sul", 0, 1),
       ("Coreia do Sul", 0, 1),
       ("Itália", 4, 1),
       ("Canadá", 0, 2),
       ("A definir", 0, 2),
       ("Catar", 0, 2),
       ("Suíça", 0, 2),
       ("Brasil", 5, 3),
       ("Marrocos", 0, 3),
       ("Haiti", 0, 3),
       ("Escócia", 0, 3),
       ("Estados unidos", 0, 4),
       ("Paraguai", 0, 4),
       ("Astrália", 0, 4),
       ("A definir", 0, 4),
       ("Alemanha", 4, 5),
       ("Caração", 0, 5),
       ("Costa do marfim", 0, 5),
       ("Equador", 0, 5),
       ("Holanda", 0, 6),
       ("Japão", 0, 6),
       ("A definir", 0, 6),
       ("Bélgica", 0, 7),
       ("Egito", 0, 7),
       ("Irã", 0, 7),
       ("Nova Zelândia", 0, 7),
       ("Espanha", 1, 8),
       ("Cabo verde", 0, 8),
       ("Arábia Saudita", 0, 8),
       ("Uruguai", 2, 8),
       ("França", 3, 9),
       ("Senegal", 0, 9),
       ("A definir", 0, 9),
       ("Noruega", 0, 9),
       ("Argentina", 3, 10),
       ("Argélia", 0, 10),
       ("Áustria", 0, 10),
       ("Jordânia", 0, 10),
       ("Portugal", 0, 11),
       ("A definir", 0, 11),
       ("Uzbequistão", 0, 11),
       ("Colômbia", 0, 11),
       ("Inglaterra", 1, 12),
       ("Croácia", 0, 12),
       ("Gana", 0, 12),
       ("Panamá", 0, 12);
select * from selecoes;

desc jogadores;

INSERT INTO jogadores (nome, n_camisa, id_selecao)
VALUES ("Hirving Lozano", 22, 1),
("Benni McCarthy", 9, 2),
("Son Heung-min", 7, 3),
("Paolo Maldini", 3, 4),
("Alphonso Davies", 19, 5),
("Jogador A Definir 1", 0, 6),
("Akram Afif", 10, 7),
("Granit Xhaka", 10, 8),
("Pelé", 10, 9),
("Achraf Hakimi", 2, 10),
("Duckens Nazon", 9, 11),
("Andrew Robertson", 3, 12),
("Christian Pulisic", 10, 13),
("Miguel Almirón", 10, 14),
("Harry Kewell", 10, 15),
("Jogador A Definir 2", 0, 16),
("Miroslav Klose", 11, 17),
("Jogador Curaçao", 10, 18),
("Didier Drogba", 11, 19),
("Enner Valencia", 13, 20),
("Johan Cruyff", 14, 21),
("Keisuke Honda", 4, 22),
("Jogador A Definir 3", 0, 23),
("Kevin De Bruyne", 17, 24),
("Mohamed Salah", 10, 25),
("Mehdi Taremi", 9, 26),
("Chris Wood", 9, 27),
("Andrés Iniesta", 8, 28),
("Ryan Mendes", 10, 29),
("Salem Al-Dawsari", 10, 30),
("Diego Forlán", 10, 31),
("Zinedine Zidane", 10, 32),
("Sadio Mané", 10, 33),
("Jogador A Definir 4", 0, 34),
("Erling Haaland", 9, 35),
("Lionel Messi", 10, 36),
("Riyad Mahrez", 7, 37),
("David Alaba", 27, 38),
("Baha Abdel-Rahman", 13, 39),
("Cristiano Ronaldo", 7, 40),
("Jogador A Definir 5", 0, 41),
("Eldor Shomurodov", 14, 42),
("James Rodríguez", 10, 43),
("Wayne Rooney", 10, 44),
("Luka Modrić", 10, 45),
("Asamoah Gyan", 3, 46),
("Román Torres", 13, 47);
       

select * from partidas;

insert into estadios (nome, cidade, pais, capacidade)
values ("BC Place", "Vancouver", "Canadá", 54.500),
("Azteca", "Cidade do México", "México", 104.500),
("Akron", "Guadalajara", "México", 45.500),
("Estádio BBVA", "Monterrey", "México", 53.500),
("Estádio Gillete", "Boston", "Estados Unidos", 64.500);

desc estadios;

INSERT INTO partidas (id_selecao_a, id_selecao_b, id_estadio, gols_selecao_a, gols_selecao_b, horario, bilheteria)
VALUES
-- Grupo A
(1, 2, 1, 2, 1, '2026-06-12 16:00:00', 54500),
(3, 4, 2, 0, 3, '2026-06-12 19:00:00', 104500),

-- Grupo B
(5, 6, 3, 1, 1, '2026-06-13 13:00:00', 45500),
(7, 8, 4, 0, 2, '2026-06-13 16:00:00', 53500),

-- Grupo C
(9, 10, 2, 4, 1, '2026-06-14 19:00:00', 104500),
(11, 12, 1, 1, 2, '2026-06-14 16:00:00', 54500),

-- Grupo D
(13, 14, 5, 2, 2, '2026-06-15 13:00:00', 64500),
(15, 16, 3, 3, 0, '2026-06-15 16:00:00', 45500),

-- Grupo E
(17, 18, 4, 2, 0, '2026-06-16 19:00:00', 53500),
(19, 20, 1, 1, 1, '2026-06-16 16:00:00', 54500),

-- Grupo F
(21, 22, 2, 3, 2, '2026-06-17 19:00:00', 104500),
(23, 24, 5, 0, 2, '2026-06-17 16:00:00', 64500),

-- Grupo G
(25, 26, 4, 2, 1, '2026-06-18 13:00:00', 53500),
(27, 28, 3, 0, 3, '2026-06-18 16:00:00', 45500),

-- Grupo H
(29, 30, 1, 1, 1, '2026-06-19 13:00:00', 54500),
(31, 32, 2, 2, 2, '2026-06-19 19:00:00', 104500),

-- Grupo I
(33, 34, 5, 3, 0, '2026-06-20 16:00:00', 64500),
(35, 36, 3, 1, 2, '2026-06-20 19:00:00', 45500),

-- Grupo J
(37, 38, 4, 1, 0, '2026-06-21 13:00:00', 53500),
(39, 40, 2, 0, 4, '2026-06-21 19:00:00', 104500),

-- Grupo K
(41, 42, 1, 0, 1, '2026-06-22 13:00:00', 54500),
(43, 44, 5, 2, 2, '2026-06-22 16:00:00', 64500),

-- Grupo L
(45, 46, 3, 1, 1, '2026-06-23 13:00:00', 45500),
(47, 45, 4, 0, 2, '2026-06-23 16:00:00', 53500);