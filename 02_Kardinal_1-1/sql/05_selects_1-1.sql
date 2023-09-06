-- SELECTS 1:1

-- Einzeltabellen
SELECT * FROM mydb.cats;
SELECT * FROM mydb.servants;

-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM mydb.cats JOIN mydb.servants;

-- Kreuzprodukt (gefiltert)
SELECT * FROM mydb.cats JOIN mydb.servants
#WHERE cat_name = "Grizabella"; -- scharf
#WHERE cat_name LIKE "Gri%"; -- unscharf
WHERE cat_name LIKE "_ri%";

SELECT * FROM mydb.cats JOIN mydb.servants
WHERE cats.id = servants.cats_id;

-- Inner Join 1 / Gesamte Tabelle
SELECT cat_name, servant_name FROM mydb.cats 
INNER JOIN mydb.servants
-- Werte Primärschlüssel/MT = Werte Fremdschlüssel/DT
ON mydb.cats.id = mydb.servants.cats_id;

-- Inner Join 2 / (Wer dient wem?)
-- Wer dient Grizabella?
-- Wem dient Ingo?

