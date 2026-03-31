INSERT INTO temporadas (ano) VALUES (2024), (2025);

INSERT INTO equipes (nome, pais) VALUES
('Thunder Racing', 'Itália'),
('Velocity Motors', 'Alemanha'),
('Falcon GP', 'Reino Unido');

INSERT INTO pilotos (nome, pais, equipe_id) VALUES
('Lucas Moretti', 'Brasil', 1),
('Hans Keller', 'Alemanha', 2),
('James Walker', 'Reino Unido', 3),
('Pedro Alves', 'Brasil', 1),
('Marco Rossi', 'Itália', 2);

INSERT INTO corridas (nome, circuito, data_corrida, temporada_id) VALUES
('GP do Brasil', 'Interlagos', '2024-04-12', 1),
('GP da Itália', 'Monza', '2024-05-10', 1),
('GP da Alemanha', 'Hockenheim', '2025-03-15', 2);

INSERT INTO resultados (corrida_id, piloto_id, posicao, pontos, tempo) VALUES
(1, 1, 1, 25, '01:32:10'),
(1, 2, 2, 18, '01:32:40'),
(1, 3, 3, 15, '01:33:05'),
(2, 2, 1, 25, '01:28:50'),
(2, 4, 2, 18, '01:29:10'),
(3, 5, 1, 25, '01:31:00'),
(3, 1, 2, 18, '01:31:20');

INSERT INTO patrocinadores (nome) VALUES
('PetroSpeed'),
('TurboTech'),
('NeoOil');

INSERT INTO equipes_patrocinadores VALUES
(1,1),
(1,2),
(2,2),
(2,3),
(3,1);

use automobilismo;

show tables;

		SELECT nome,
			   pais,
               equipe_id
		  FROM pilotos;
          
		SELECT corrida_id,
			   piloto_id,
			   posicao,
			   pontos,
			   tempo
		  FROM resultados
          WHERE pontos >= 20
          order by tempo;
          
		SELECT * -- 1
		  FROM pilotos
          WHERE pais = "Brasil";
          
		SELECT * -- 2
		  FROM resultados
		 WHERE piloto_id = 1;
           
		SELECT * -- 3
		  FROM patrocinadores
         ORDER BY nome;
             
		SELECT * -- 4
		  FROM corridas
		 WHERE temporada_id = 1
         ORDER BY circuito;
          
		SELECT * -- 1/2
		  FROM pilotos
          WHERE pais != "Brasil";
          
		SELECT * -- 2/2
        FROM corridas
        ORDER BY data_corrida;
        
        SELECT * -- 3/2
        FROM resultados
        ORDER BY pontos;
        
        SELECT * -- 4/2
        FROM pilotos
        ORDER BY nome;
        
        SELECT *
        FROM resultados
        WHERE pontos > 18;
        
        SELECT *
        FROM resultados
        WHERE posicao <= 2
        ORDER BY pontos DESC;
        
        SELECT *
        FROM pilotos
        WHERE pais = 'Brasil'
        ORDER BY nome DESC;
        
        SELECT *
        FROM temporadas
        WHERE ano = 2024
        ORDER BY ano;
        
        SELECT *
        FROM resultados
        WHERE pontos <= 15
        ORDER BY pontos DESC;
        
        SELECT *
		  FROM pilotos
          WHERE pais != "Brasil"
          ORDER BY pais, nome;
          
		SELECT *
		  FROM corridas
          WHERE data_corrida > "2024-04-30"
          ORDER BY data_corrida;
          
		SELECT *
		  FROM resultados
          WHERE posicao != 1
          ORDER BY posicao;