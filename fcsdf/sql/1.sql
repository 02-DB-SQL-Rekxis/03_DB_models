CREATE TABLE IF NOT EXISTS `mydb`.`lehrer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `gehalt` INT NOT NULL,
  `idOrte` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`faecher` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fachbezeichnung` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`faecher_has_lehrer` (
  `faecher_id` INT NOT NULL,
  `lehrer_id` INT NOT NULL,
  PRIMARY KEY (`faecher_id`, `lehrer_id`),
  INDEX `fk_faecher_has_lehrer_lehrer1_idx` (`lehrer_id` ASC) VISIBLE,
  INDEX `fk_faecher_has_lehrer_faecher_idx` (`faecher_id` ASC) VISIBLE,
  CONSTRAINT `fk_faecher_has_lehrer_faecher`
    FOREIGN KEY (`faecher_id`)
    REFERENCES `mydb`.`faecher` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_faecher_has_lehrer_lehrer1`
    FOREIGN KEY (`lehrer_id`)
    REFERENCES `mydb`.`lehrer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
