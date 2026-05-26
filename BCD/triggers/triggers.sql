CREATE DATABASE IF NOT EXISTS `triggers`
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

USE `triggers`;

SET NAMES utf8;
SET TIME_ZONE='+00:00';
SET UNIQUE_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
SET SQL_NOTES=0;

-- Tabela controle
DROP TABLE IF EXISTS `controle`;
CREATE TABLE `controle` (
  `id` int NOT NULL,
  `total_pedidos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- Tabela log
DROP TABLE IF EXISTS `log_usuarios`;
CREATE TABLE `log_usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mensagem` varchar(255),
  `data_log` datetime,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- Tabela pedidos
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantidade` int,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DELIMITER $$

CREATE TRIGGER trg_log_controle
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
    UPDATE controle
    SET total_pedidos = total_pedidos + NEW.quantidade
    WHERE id = 1;

    IF ROW_COUNT() = 0 THEN
        INSERT INTO controle (id, total_pedidos)
        VALUES (1, NEW.quantidade);
    END IF;

    INSERT INTO log_usuarios (mensagem, data_log)
    VALUES (
        CONCAT('Pedidos aumentaram em ', NEW.quantidade),
        NOW()
    );
END$$

DELIMITER ;

-- Tabela produtos
DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100),
  `estoque` int,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- Tabela usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100),
  `email` varchar(255),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DELIMITER $$

CREATE TRIGGER trg_usuario_upper
BEFORE INSERT ON usuarios
FOR EACH ROW
BEGIN
    SET NEW.nome = UPPER(NEW.nome);

    INSERT INTO log_usuarios (mensagem, data_log)
    VALUES (
        CONCAT('Inserindo o usuário: ', NEW.nome),
        NOW()
    );
END$$

CREATE TRIGGER trg_usuario_cadastrado
AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO log_usuarios (mensagem, data_log)
    VALUES (
        CONCAT('O usuário ', NEW.nome, ' foi cadastrado!'),
        NOW()
    );
END$$

CREATE TRIGGER trg_log_update
AFTER UPDATE ON usuarios
FOR EACH ROW
BEGIN
    IF OLD.nome <> NEW.nome THEN
        INSERT INTO log_usuarios (mensagem, data_log)
        VALUES (
            CONCAT('O nome foi alterado de ', OLD.nome, ' para ', NEW.nome),
            NOW()
        );
    END IF;
END$$

CREATE TRIGGER trg_log_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO log_usuarios (mensagem, data_log)
    VALUES (
        CONCAT('O usuário ', OLD.nome, ' foi excluído'),
        NOW()
    );
END$$

DELIMITER ;

-- Tabela vendas
DROP TABLE IF EXISTS `vendas`;
CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produto` int,
  `quantidade` int,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DELIMITER $$

CREATE TRIGGER trg_log_update_estoque
BEFORE INSERT ON vendas
FOR EACH ROW
BEGIN
    DECLARE estoque_atual INT;

    SELECT estoque INTO estoque_atual
    FROM produtos
    WHERE id = NEW.id_produto;

    IF estoque_atual < NEW.quantidade THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Estoque insuficiente';
    ELSE
        UPDATE produtos
        SET estoque = estoque - NEW.quantidade
        WHERE id = NEW.id_produto;

        INSERT INTO log_usuarios (mensagem, data_log)
        VALUES (
            CONCAT('Estoque atualizado. Agora tem: ', estoque_atual - NEW.quantidade),
            NOW()
        );
    END IF;
END$$

DELIMITER ;

SET FOREIGN_KEY_CHECKS=1;
SET UNIQUE_CHECKS=1;
SET SQL_NOTES=1;
