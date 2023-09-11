CREATE TABLE IF NOT EXISTS `mydb`.`productlist` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,2) NOT NULL,
  `id_stock` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;