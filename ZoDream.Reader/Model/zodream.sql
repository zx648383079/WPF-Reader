-- MySQL Script generated by MySQL Workbench
-- 03/23/16 12:44:34
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema zodream
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema zodream
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zodream` DEFAULT CHARACTER SET utf8 ;
USE `zodream` ;

-- -----------------------------------------------------
-- Table `zodream`.`BookItem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zodream`.`BookItem` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Image` VARCHAR(100) NULL,
  `Description` VARCHAR(255) NULL,
  `Author` VARCHAR(45) NULL,
  `Source` VARCHAR(20) NULL DEFAULT '本地',
  `Kind` VARCHAR(45) NULL DEFAULT '其他',
  `Url` VARCHAR(255) NULL,
  `Index` INT NULL DEFAULT 0,
  `Count` INT NULL,
  `Time` DATETIME NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `name_UNIQUE` (`Name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zodream`.`ChapterItem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zodream`.`ChapterItem` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NULL,
  `Content` TEXT NULL,
  `BookId` INT NULL,
  `Url` VARCHAR(255) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zodream`.`WebRuleItem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zodream`.`WebRuleItem` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Url` VARCHAR(255) NOT NULL,
  `CatalogBegin` VARCHAR(100) NULL,
  `CatalogEnd` VARCHAR(100) NULL,
  `ChapterBegin` VARCHAR(100) NULL,
  `ChapterEnd` VARCHAR(100) NULL,
  `Replace` TEXT NULL,
  `AuthorBegin` VARCHAR(100) NULL,
  `AuthorEnd` VARCHAR(100) NULL,
  `DescriptionBegin` VARCHAR(100) NULL,
  `DescriptionEnd` VARCHAR(100) NULL,
  `CoverBegin` VARCHAR(100) NULL,
  `CoverEnd` VARCHAR(100) NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `websiteid_UNIQUE` (`Name` ASC),
  UNIQUE INDEX `Url_UNIQUE` (`Url` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zodream`.`WebsiteItem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zodream`.`WebsiteItem` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Url` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC),
  UNIQUE INDEX `Url_UNIQUE` (`Url` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
