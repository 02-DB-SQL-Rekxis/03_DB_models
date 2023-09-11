INSERT INTO `mydb`.`productlist` (`ID`, `product`, `category`, `price`, `id_stock`) VALUES (DEFAULT, "DELL XP1", "Computer", 520.00, 200);
INSERT INTO `mydb`.`productlist` (`ID`, `product`, `category`, `price`, `id_stock`) VALUES (DEFAULT, "AKOYA ZD217", "Computer", 430.00, 10);
INSERT INTO `mydb`.`productlist` (`ID`, `product`, `category`, `price`, `id_stock`) VALUES (DEFAULT, "WD 1020", "External Memory", 115.00, 40);
INSERT INTO `mydb`.`productlist` (`ID`, `product`, `category`, `price`, `id_stock`) VALUES (DEFAULT, "CISCO 2050T", "Network Components", 245.00, 10);

SELECT product Ware, price Preis FROM `mydb`.`productlist`
WHERE category = "Computer"
ORDER BY price DESC;
