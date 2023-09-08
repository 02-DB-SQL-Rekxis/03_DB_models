-- Vorbereitung
DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb`;

-- Customers 
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `cst_name` VARCHAR(45) NOT NULL,
  `cst_firstname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

-- Struktur
DESCRIBE `mydb`.`customers`;

-- Orders
CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `amount` DECIMAL(6,2) NOT NULL,
  `customers_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_orders_customers_idx` (`customers_ID` ASC),
  CONSTRAINT `fk_orders_customers`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `mydb`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Struktur
DESCRIBE `mydb`.`orders`;
