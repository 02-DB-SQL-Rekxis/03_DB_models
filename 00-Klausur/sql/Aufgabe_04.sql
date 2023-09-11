-- user
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `user_mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

-- posts
CREATE TABLE IF NOT EXISTS `mydb`.`posts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NOT NULL,
  `likes` INT NOT NULL,
  `user_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_posts_user1_idx` (`user_ID` ASC),
  CONSTRAINT `fk_posts_user1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`user` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;