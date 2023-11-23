DROP DATABASE IF EXISTS `joinmix` ;


CREATE DATABASE IF NOT EXISTS `joinmix` DEFAULT CHARACTER SET utf8 ;
USE `joinmix` ;


DROP TABLE IF EXISTS `hazikedvenc` ;

CREATE TABLE IF NOT EXISTS `hazikedvenc` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fajta` VARCHAR(45) NULL,
  `nev` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szemely`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `szemely` ;

CREATE TABLE IF NOT EXISTS `szemely` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vnev` VARCHAR(45) NULL,
  `knev` VARCHAR(45) NULL,
  `kor` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tulaj`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tulaj` ;

CREATE TABLE IF NOT EXISTS `tulaj` (
  `hazikedvenc_id` INT NOT NULL,
  `szemely_id` INT NOT NULL,
  PRIMARY KEY (`hazikedvenc_id`, `szemely_id`),
  INDEX `fk_tulaj_szemely_idx` (`szemely_id` ASC),
  CONSTRAINT `fk_tulaj_szemely`
    FOREIGN KEY (`szemely_id`)
    REFERENCES `szemely` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tulaj_hazikedvenc1`
    FOREIGN KEY (`hazikedvenc_id`)
    REFERENCES `hazikedvenc` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `szin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `szin` ;

CREATE TABLE IF NOT EXISTS `szin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nev` VARCHAR(20) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `auto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `auto` ;

CREATE TABLE IF NOT EXISTS `auto` (
  `rendszam` CHAR(7) NOT NULL,
  `gyarto` VARCHAR(45) NULL,
  `tipus` VARCHAR(45) NULL,
  `szin_id` INT NOT NULL,
  `tulaj` INT NOT NULL,
  PRIMARY KEY (`rendszam`, `tulaj`, `szin_id`),
  INDEX `fk_auto_szemely1_idx` (`tulaj` ASC),
  INDEX `fk_auto_szin1_idx` (`szin_id` ASC),
  CONSTRAINT `fk_auto_szemely1`
    FOREIGN KEY (`tulaj`)
    REFERENCES `szemely` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_auto_szin1`
    FOREIGN KEY (`szin_id`)
    REFERENCES `szin` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tantargy`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tantargy` ;

CREATE TABLE IF NOT EXISTS `tantargy` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nev` VARCHAR(20) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tanulja`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tanulja` ;

CREATE TABLE IF NOT EXISTS `tanulja` (
  `szemely_id` INT NOT NULL,
  `tantargy_id` INT NOT NULL,
  PRIMARY KEY (`szemely_id`, `tantargy_id`),
  INDEX `fk_tanulja_tantargy1_idx` (`tantargy_id` ASC),
  CONSTRAINT `fk_tanulja_szemely1`
    FOREIGN KEY (`szemely_id`)
    REFERENCES `szemely` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tanulja_tantargy1`
    FOREIGN KEY (`tantargy_id`)
    REFERENCES `tantargy` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;