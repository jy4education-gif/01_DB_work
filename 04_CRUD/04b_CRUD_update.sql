\! cls

-- SELECT * FROM boo.customers;

/* UPDATE TabellenStruktur */

# 1. Neue Spalten anlegen
-- ALTER TABLE boo.customers 
--   ADD vorname VARCHAR(100) AFTER ID,
--   ADD nachname VARCHAR(100) AFTER Vorname
-- ;

-- DESCRIBE boo.customers;
-- SELECT * FROM boo.customers LIMIT 5;

# 2. Daten von 'Name' in die neuen Spalten splitten (Beispiel für MySQL)
-- UPDATE boo.customers 
-- SET vorname = SUBSTRING_INDEX(Name, ' ', 1),
--     nachname = SUBSTRING_INDEX(Name, ' ', -1);

-- SELECT * FROM boo.customers LIMIT 5;

# 3. Alte Spalte löschen
-- ALTER TABLE boo.customers DROP COLUMN Name;
-- DESCRIBE boo.customers;
-- SELECT * FROM boo.customers LIMIT 5;

/* UPDATE Daten */

# id 4 + 5 Heirat! ;-)
-- UPDATE boo.customers SET nachname = "Fischer" WHERE id = 4;
-- SELECT * FROM boo.customers LIMIT 10;

-- -- Alternative 01
-- UPDATE boo.customers
-- SET nachname = (SELECT n.nachname FROM (SELECT nachname FROM boo.customers WHERE id = 5) AS n)
-- WHERE id = 4;

-- -- Alternative 02
-- UPDATE boo.customers AS ziel
-- JOIN boo.customers AS quelle ON quelle.id = 5
-- SET 
--     ziel.nachname = quelle.nachname,
--     ziel.adresse = quelle.adresse,
--     ziel.wohnort = quelle.wohnort,
--     ziel.bundesland = quelle.bundesland
-- WHERE ziel.id = 4;

-- -- Alternative 03 via Subquery
SELECT nachname FROM boo.customers WHERE id = 5;

#id 1 zieht um
-- UPDATE boo.customers SET adresse = "Mustergasse 2" WHERE id = 1;
-- SELECT * FROM boo.customers LIMIT 10;
UPDATE boo.customers 
SET adresse = (SELECT n.adresse FROM (SELECT adresse FROM boo.customers WHERE id = 5) AS n) 
WHERE id = 4;

-- Kontrolle des Ergebnisses
SELECT * FROM boo.customers LIMIT 5;
