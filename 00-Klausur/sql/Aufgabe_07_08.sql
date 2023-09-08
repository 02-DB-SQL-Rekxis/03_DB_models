-- Insert values
INSERT INTO `mydb`.`addressbook` (`ID`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Müller", "Peter", 12991, "Berlin");
INSERT INTO `mydb`.`addressbook` (`ID`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Ay", "Yildiz", 63325, "Langen");
INSERT INTO `mydb`.`addressbook` (`ID`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Sommer", "Petra", 70137, "Stuttgart");

-- Person raussuchen die mit "PET" anfängt
SELECT vorname, name  FROM `mydb`.`addressbook`
WHERE vorname LIKE "PET%";