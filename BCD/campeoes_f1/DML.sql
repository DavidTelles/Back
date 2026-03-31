use campeoes_f1;
show tables;

insert into pilotos (nome, pais, data_nascimento) values
("Aytron Senna", "Brasil", "1960-03-21"),
("Michael Scumacher", "Alemanha", "1969-01-03"),
("Lewis Hamilton", "Reino Unido", "1985-01-07"),
("Max Verstappen", "Bélgica/Holandês", "1997-09-30"),
("Gabriel Borteleto", "Brasil", "2004-10-14"), -- 5
("Alain Prost", "Francês", "1995-02-24"),
("Lando Norris", "Inglaterra", "1999-11-13"),
("Charles Leclerc", "Monâco", "1997-10-16"),
("George Russel", "Inglaterra", "1998-02-15"),
("Oscar Piastri", "Austrália", "2001-04-06"), -- 10
("Niki Lauda", "Austria", "1949-02-22");

select * from campeonatos;

insert into equipes (nome, pais) values
("Mercedes", "Alemanha"),
("RedBull", "Austrália"),
("McLaren", "Inglaterra"),
("Sauber", "Suiça"),
("Ferrari", "Itália"); -- 5

insert into temporadas (ano) values
(1984),
(1986),
(1991),
(2004),
(2020), -- 5
(2024),
(2025);

insert into campeonatos (pilotos_id_piloto, equipes_id_equipe, temporadas_id_temporada) values
(11, 3, 1),
(6, 3, 2),
(1, 3, 3),
(2, 5, 4),
(3, 1, 5),
(4, 2, 6),
(7, 3, 7);