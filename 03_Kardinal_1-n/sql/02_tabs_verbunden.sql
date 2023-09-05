-- Vorbereitungen
DROP TABLE IF EXISTS mydb.kittens;
DROP TABLE IF EXISTS mydb.servants;
DROP TABLE IF EXISTS mydb.cats;

-- Mastertabelle (MT)
CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- Struktur: MT
DESCRIBE mydb.cats;

-- Inserts: MT
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Grizabella", "white");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Alonzo", "grey");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Mausi", "striped");

-- Inhalte Anzeigen: MT
SELECT * FROM mydb.cats;

-- Detailtabelle (DT): Verbindung zur MT über Fremdschlüssel (fk)
CREATE TABLE IF NOT EXISTS `mydb`.`kittens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `kitten_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_kittens_cats_idx` (`cats_id` ASC),
  CONSTRAINT `fk_kittens_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Struktur: DT
DESCRIBE mydb.kittens;

-- Inserts: DT
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Karpuz", "tricolor", 1);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Mikrop", "tricolor", 3);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Grizlonzo", "grey-white", 1);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Grizlonzo2", "grey-white", 1);

-- Inhalte Anzeigen: DT
SELECT * FROM mydb.kittens;