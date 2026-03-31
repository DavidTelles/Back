CREATE DATABASE automobilismo;
USE automobilismo;

CREATE TABLE temporadas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL UNIQUE
);

CREATE TABLE equipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(60)
);

CREATE TABLE pilotos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(60),
    equipe_id INT,
    FOREIGN KEY (equipe_id) REFERENCES equipes(id)
);

CREATE TABLE corridas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    circuito VARCHAR(100),
    data_corrida DATE,
    temporada_id INT,
    FOREIGN KEY (temporada_id) REFERENCES temporadas(id)
);

CREATE TABLE resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    corrida_id INT,
    piloto_id INT,
    posicao INT,
    pontos INT,
    tempo TIME,
    FOREIGN KEY (corrida_id) REFERENCES corridas(id),
    FOREIGN KEY (piloto_id) REFERENCES pilotos(id)
);

CREATE TABLE patrocinadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE equipes_patrocinadores (
    equipe_id INT,
    patrocinador_id INT,
    PRIMARY KEY (equipe_id, patrocinador_id),
    FOREIGN KEY (equipe_id) REFERENCES equipes(id),
    FOREIGN KEY (patrocinador_id) REFERENCES patrocinadores(id)
);