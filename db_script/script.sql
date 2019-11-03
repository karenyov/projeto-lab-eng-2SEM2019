CREATE SCHEMA `test` ;

CREATE TABLE `test`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `test`.`categorias` (`nome`) VALUES ('Bebida');
INSERT INTO `test`.`categorias` (`nome`) VALUES ('Higiene');
INSERT INTO `test`.`categorias` (`nome`) VALUES ('Frutas');
INSERT INTO `test`.`categorias` (`nome`) VALUES ('Verduras');

ALTER TABLE `test`.`categorias` 
RENAME TO  `test`.`categoria` ;

CREATE TABLE `test`.`produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigo` INT NOT NULL,
  `categoria_id` INT NULL,
  `nome` VARCHAR(255) NULL,
  PRIMARY KEY (`id`, `codigo`));

INSERT INTO `test`.`produto` (`codigo`, `categoria_id`, `nome`) VALUES ('1', '1', 'Refrigerante');
INSERT INTO `test`.`produto` (`codigo`, `categoria_id`, `nome`) VALUES ('2', '1', 'Suco');
INSERT INTO `test`.`produto` (`codigo`, `categoria_id`, `nome`) VALUES ('3', '3', 'Banana');
INSERT INTO `test`.`produto` (`codigo`, `categoria_id`, `nome`) VALUES ('4', '3', 'Maça');
INSERT INTO `test`.`produto` (`codigo`, `categoria_id`, `nome`) VALUES ('5', '3', 'Abacaxi');

