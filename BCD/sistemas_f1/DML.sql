use sistema_f1;
show tables;
desc equipes;

insert into equipes(nome, pais) values
("MacLaren", "UK"),
("Ferrari", "Itália"),
("Red Bull Racing", "Alemanha/UK"),
("Mercades", "Suiça/Alemanha"),
("Aston Martin", "UK"), -- 5
("Alpine", "França/UK"),
("Williams", "UK"),
("VCARB", "Itália/UK"),
("Haas", "Estados Unidos/Itália"),
("Cadillac", "EUA"),
("Audi", "Alemanha"); -- 10

select * from equipes;

insert into pistas (nome, pais, tamanho) values
("Albert Park", "Austrália", 5.278),
("Shanghai International", "China", 5.451),
("Suzuka International", "Japão", 5.807),
("Bahrain International", "Bahrein", 5.412),
("Jeddah Corniche", "Arábia Saudita", 6.174), -- 5
("Miami International Autodrome", "EUA", 5.412),
("Circuit Gilles Villeneuve", "Canadá", 4.361),
("Circuit de Monaco", "Mônaco", 3.337),
("Circuit de Barcelona-Catalunya", "Espanha", 4.657),
("Red Bull Ring", "Áustria", 4.318), -- 10
("Silverstone", "UK", 5.891),
("Spa-Francorchamps", "Belgica", 7.004),
("Hungaroring", "Hungria", 4.381),
("Circuit Zandvoort", "Holanda", 4.259),
("Monza", "Itália", 5.793), -- 15
("Madring", "Espanha", 5.400),
("Baku City Circuit", "Azerbairjão", 5.807),
("Marina Bay Street Circuit", "Singapura", 4.940),
("Circuit of the Americas", "EUA", 5.513),
("Autódromo Hermanos Rodríguez", "México", 4.304), -- 20
("Autódromo José Carlos Pace", "Brasil", 4.309),
("Las Vegas Strip Circuit", "EUA", 6.201),
("Lusail International", "Catar", 5.419),
("Yas Marina", "Abu Dhabi", 5.281); -- 24


INSERT INTO pilotos (nome, idade, idequipe) VALUES
('Lando Norris', 27, 1),
('Oscar Piastri', 25, 1),
('Max Verstappen', 28, 3),
('Isack Hadjar', 21, 3),
('Lewis Hamilton', 41, 2),
('Charles Leclerc', 28, 2),
('George Russell', 28, 4),
('Andrea Kimi Antonelli', 19, 4),
('Fernando Alonso', 44, 5),
('Lance Stroll', 27, 5),
('Nico Hülkenberg', 20, 11),
('Gabriel Bortoleto', 21, 11),
('Carlos Sainz Jr.', 31, 7),
('Alexander Albon', 20, 7),
('Pierre Gasly', 30, 6),
('Franco Colapinto', 22, 6),
('Esteban Ocon', 29, 9),
('Oliver Bearman', 21, 9),
('Liam Lawson', 24, 8),
('Arvid Lindblad', 18, 8),
('Sergio Pérez', 36, 10),
('Valtteri Bottas', 36, 10);


select * from pilotos;

insert into corridas(data, duracao, idpista) values
("2025-03-16", 1.42, 1),
("2025-03-23", 1.30, 2),
("2025-05-25", 1.40, 8),
("2025-09-07", 1.14, 15),
("2025-11-09", 1.33, 21),
("2025-12-07", 1.27, 24);

select * from corridas;

insert into resultado(posicao, pontos, idcorrida, idpiloto, idequipe) values
(1, 25, 1, 1, 1),
(2, 18, 1, 3, 3),
(3, 15, 1, 7, 4),
(4, 12, 1, 8, 4),
(5, 10, 1, 14, 7),
(6, 8, 1, 10, 5),
(7, 6, 1, 11, 11),
(8, 4, 1, 6, 2),
(9, 2, 1, 2, 1),
(10, 1, 1, 5, 2),
(11, 0, 1, 15, 6),
(12, 0, 1, 12, 11),
(13, 0, 1, 17, 9),
(14, 0, 1, 18, 9);

select * from resultado;