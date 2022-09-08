-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cartasjuego
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cartasjuego` ;

-- -----------------------------------------------------
-- Schema cartasjuego
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cartasjuego` DEFAULT CHARACTER SET utf8 ;
USE `cartasjuego` ;

-- -----------------------------------------------------
-- Table `cartasjuego`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cartasjuego`.`usuario` ;

CREATE TABLE IF NOT EXISTS `cartasjuego`.`usuario` (
  `idusuario` INT NOT NULL,
  `usuario` VARCHAR(45) NULL,
  `contraseña` VARCHAR(45) NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartasjuego`.`cartas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cartasjuego`.`cartas` ;

CREATE TABLE IF NOT EXISTS `cartasjuego`.`cartas` (
  `idcartas` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `valor1` VARCHAR(45) NULL,
  `valor2` VARCHAR(45) NULL,
  PRIMARY KEY (`idcartas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartasjuego`.`barajar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cartasjuego`.`barajar` ;

CREATE TABLE IF NOT EXISTS `cartasjuego`.`barajar` (
  `idbarajar` INT NOT NULL,
  `1` VARCHAR(45) NULL,
  `2` VARCHAR(45) NULL,
  `3` VARCHAR(45) NULL,
  `4` VARCHAR(45) NULL,
  `5` VARCHAR(45) NULL,
  `6` VARCHAR(45) NULL,
  `7` VARCHAR(45) NULL,
  `9` VARCHAR(45) NULL,
  `10` VARCHAR(45) NULL,
  `11` VARCHAR(45) NULL,
  `12` VARCHAR(45) NULL,
  `13` VARCHAR(45) NULL,
  `14` VARCHAR(45) NULL,
  `15` VARCHAR(45) NULL,
  `16` VARCHAR(45) NULL,
  PRIMARY KEY (`idbarajar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartasjuego`.`jugadores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cartasjuego`.`jugadores` ;

CREATE TABLE IF NOT EXISTS `cartasjuego`.`jugadores` (
  `idjugadores` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  `activos` VARCHAR(45) NULL,
  PRIMARY KEY (`idjugadores`),
  CONSTRAINT `fk_jugadores_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `cartasjuego`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_jugadores_usuario1_idx` ON `cartasjuego`.`jugadores` (`usuario_idusuario` ASC)  ;


-- -----------------------------------------------------
-- Table `cartasjuego`.`partida`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cartasjuego`.`partida` ;

CREATE TABLE IF NOT EXISTS `cartasjuego`.`partida` (
  `idpartida` INT NOT NULL,
  `cantidadjugadores` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NULL,
  PRIMARY KEY (`idpartida`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartasjuego`.`tablero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cartasjuego`.`tablero` ;

CREATE TABLE IF NOT EXISTS `cartasjuego`.`tablero` (
  `idtablero` INT NOT NULL,
  `barajar_idbarajar` INT NOT NULL,
  `jugadores_idjugadores` INT NOT NULL,
  `partida_idpartida` INT NOT NULL,
  PRIMARY KEY (`idtablero`),
  CONSTRAINT `fk_tablero_barajar1`
    FOREIGN KEY (`barajar_idbarajar`)
    REFERENCES `cartasjuego`.`barajar` (`idbarajar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tablero_jugadores1`
    FOREIGN KEY (`jugadores_idjugadores`)
    REFERENCES `cartasjuego`.`jugadores` (`idjugadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tablero_partida1`
    FOREIGN KEY (`partida_idpartida`)
    REFERENCES `cartasjuego`.`partida` (`idpartida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_tablero_barajar1_idx` ON `cartasjuego`.`tablero` (`barajar_idbarajar` ASC)  ;

CREATE INDEX `fk_tablero_jugadores1_idx` ON `cartasjuego`.`tablero` (`jugadores_idjugadores` ASC)  ;

CREATE INDEX `fk_tablero_partida1_idx` ON `cartasjuego`.`tablero` (`partida_idpartida` ASC)  ;


-- -----------------------------------------------------
-- Data for table `cartasjuego`.`usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `cartasjuego`;
INSERT INTO `cartasjuego`.`usuario` (`idusuario`, `usuario`, `contraseña`) VALUES (01, 'camilo', '1234');
INSERT INTO `cartasjuego`.`usuario` (`idusuario`, `usuario`, `contraseña`) VALUES (02, 'juan', '1234');
INSERT INTO `cartasjuego`.`usuario` (`idusuario`, `usuario`, `contraseña`) VALUES (03, 'pedro', '1234');
INSERT INTO `cartasjuego`.`usuario` (`idusuario`, `usuario`, `contraseña`) VALUES (04, 'ana', '1234');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cartasjuego`.`cartas`
-- -----------------------------------------------------
START TRANSACTION;
USE `cartasjuego`;
INSERT INTO `cartasjuego`.`cartas` (`idcartas`, `codigo`, `valor1`, `valor2`) VALUES (1, 'A1', 'moto', 'carro');
INSERT INTO `cartasjuego`.`cartas` (`idcartas`, `codigo`, `valor1`, `valor2`) VALUES (2, 'c2', 'gato', 'perro');
INSERT INTO `cartasjuego`.`cartas` (`idcartas`, `codigo`, `valor1`, `valor2`) VALUES (3, 'd3', 'celular', 'telefono');
INSERT INTO `cartasjuego`.`cartas` (`idcartas`, `codigo`, `valor1`, `valor2`) VALUES (4, 'd5', 'labial', 'esmalte');
INSERT INTO `cartasjuego`.`cartas` (`idcartas`, `codigo`, `valor1`, `valor2`) VALUES (5, 'f6', 'cuadero', 'lapiz');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cartasjuego`.`barajar`
-- -----------------------------------------------------
START TRANSACTION;
USE `cartasjuego`;
INSERT INTO `cartasjuego`.`barajar` (`idbarajar`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`) VALUES (1, '4', '5', '3', '1', '2', '3', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cartasjuego`.`barajar` (`idbarajar`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`) VALUES (2, '5', '4', '2', '1', '4', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cartasjuego`.`barajar` (`idbarajar`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`) VALUES (3, '4', '5', '4', '3', '2', '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cartasjuego`.`jugadores`
-- -----------------------------------------------------
START TRANSACTION;
USE `cartasjuego`;
INSERT INTO `cartasjuego`.`jugadores` (`idjugadores`, `usuario_idusuario`, `activos`) VALUES (1, 1, '1');
INSERT INTO `cartasjuego`.`jugadores` (`idjugadores`, `usuario_idusuario`, `activos`) VALUES (2, 2, '1');
INSERT INTO `cartasjuego`.`jugadores` (`idjugadores`, `usuario_idusuario`, `activos`) VALUES (3, 3, '1');
INSERT INTO `cartasjuego`.`jugadores` (`idjugadores`, `usuario_idusuario`, `activos`) VALUES (4, 4, '1');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cartasjuego`.`partida`
-- -----------------------------------------------------
START TRANSACTION;
USE `cartasjuego`;
INSERT INTO `cartasjuego`.`partida` (`idpartida`, `cantidadjugadores`, `estado`) VALUES (1, '2', '1');
INSERT INTO `cartasjuego`.`partida` (`idpartida`, `cantidadjugadores`, `estado`) VALUES (2, '4', '1');
INSERT INTO `cartasjuego`.`partida` (`idpartida`, `cantidadjugadores`, `estado`) VALUES (3, '5', '0');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cartasjuego`.`tablero`
-- -----------------------------------------------------
START TRANSACTION;
USE `cartasjuego`;
INSERT INTO `cartasjuego`.`tablero` (`idtablero`, `barajar_idbarajar`, `jugadores_idjugadores`, `partida_idpartida`) VALUES (1, 1, 1, 1);
INSERT INTO `cartasjuego`.`tablero` (`idtablero`, `barajar_idbarajar`, `jugadores_idjugadores`, `partida_idpartida`) VALUES (2, 2, 2, 1);
INSERT INTO `cartasjuego`.`tablero` (`idtablero`, `barajar_idbarajar`, `jugadores_idjugadores`, `partida_idpartida`) VALUES (3, 3, 3, 1);
INSERT INTO `cartasjuego`.`tablero` (`idtablero`, `barajar_idbarajar`, `jugadores_idjugadores`, `partida_idpartida`) VALUES (4, 4, 4, 1);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
