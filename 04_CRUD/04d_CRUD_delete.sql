\! cls

/* D - DELETE */

-- SELECT * FROM boo.customers LIMIT 5;

# Einzelne Zeilen
-- DELETE FROM boo.customers WHERE id = 3; -- Filter
-- SELECT * FROM boo.customers LIMIT 5;

# Alle Zeilen
-- DELETE FROM boo.customers; -- ACHTUNG Daten sind weg!!
-- SELECT * FROM boo.customers;
-- DESCRIBE boo.customers;

-- TRUNCATE TABLE boo.customers; -- optimiertes DELETE
-- SELECT * FROM boo.customers;
-- DESCRIBE boo.customers;


# DROP TABLE --> Inhalte + Struktur löschen
# DELETE FROM .. --> Inhalte löschen, Struktur bleibt erhalten   