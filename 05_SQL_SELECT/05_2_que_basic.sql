/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

# Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

# Begrenzung: LIMIT
# Abfrage: AS eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
# Kombinationen aus mehreren Feldern in neues Feld 
# hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
   ticker AS "SYM",
   price AS "Kurs in $",
   c_name AS Unternehmen, -- wird auch ohne "" akzeptiert
   -- industry Branche -- wird auch ohne AS akzeptiert
   concat( sector, " | ", industry) AS "Operations",
   ranking AS "Rang"
FROM stocks.ccc
WHERE ranking BETWEEN 1 AND 100
ORDER BY ranking
-- LIMIT 200,10
-- LIMIT 1
-- LIMIT 10 -- X Zeilen ab 0
;
