-- Vorbereitung
DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb`;

-- Addressbook
CREATE TABLE IF NOT EXISTS `mydb`.`addressbook` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `vorname` VARCHAR(45) NOT NULL,
  `plz` INT NOT NULL,
  `ort` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

-- Struktur
DESCRIBE `mydb`.`addressbook`;
