-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BigBrotherDev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BigBrotherDev
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS BigBrotherDev;
CREATE SCHEMA BigBrotherDev;
USE BigBrotherDev;

CREATE TABLE temporada (
  id_temporada INT AUTO_INCREMENT PRIMARY KEY,
  ano INT NOT NULL
);

CREATE TABLE participantes (
  id_participantes INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  idade INT NOT NULL,
  id_temporada INT NOT NULL,
  FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada)
);

CREATE TABLE paredoes (
  id_paredao INT AUTO_INCREMENT PRIMARY KEY,
  id_participante1 INT NOT NULL,
  id_participante2 INT NOT NULL,
  id_participante3 INT NOT NULL,
  id_eliminado INT NOT NULL,

  FOREIGN KEY (id_participante1) REFERENCES participantes(id_participantes),
  FOREIGN KEY (id_participante2) REFERENCES participantes(id_participantes),
  FOREIGN KEY (id_participante3) REFERENCES participantes(id_participantes),
  FOREIGN KEY (id_eliminado) REFERENCES participantes(id_participantes)
);

CREATE TABLE lideres (
  id_lider INT AUTO_INCREMENT PRIMARY KEY,
  id_temporada INT NOT NULL,
  id_participante INT NOT NULL,

  FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada),
  FOREIGN KEY (id_participante) REFERENCES participantes(id_participantes)
);

CREATE TABLE anjos (
  id_anjo INT AUTO_INCREMENT PRIMARY KEY,
  id_participante INT NOT NULL,
  id_temporada INT NOT NULL,

  FOREIGN KEY (id_participante) REFERENCES participantes(id_participantes),
  FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada)
);

CREATE TABLE campeao (
  id_campeao INT AUTO_INCREMENT PRIMARY KEY,
  id_participantes INT NOT NULL,
  id_temporada INT NOT NULL,

  FOREIGN KEY (id_participantes) REFERENCES participantes(id_participantes),
  FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada)
);