
-- Servants: ohne Fremdschlüssel
CREATE TABLE IF NOT EXISTS `mydb`.`servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servant_name` VARCHAR(45) NOT NULL,
  `yrs_served` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- Products: ohne Fremdschlüssel
CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `product_price` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- ServantsProducts (purchases)
CREATE TABLE IF NOT EXISTS `mydb`.`purchases` (
  `servants_id` INT NOT NULL,
  `products_id` INT NOT NULL,
  PRIMARY KEY (`servants_id`, `products_id`),
  INDEX `fk_purchases_products_idx` (`products_id` ASC) INVISIBLE,
  INDEX `fk_purchases_servants_idx` (`servants_id` ASC) VISIBLE,
  CONSTRAINT `fk_purchases_servants`
    FOREIGN KEY (`servants_id`)
    REFERENCES `mydb`.`servants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchases_products`
    FOREIGN KEY (`products_id`)
    REFERENCES `mydb`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
