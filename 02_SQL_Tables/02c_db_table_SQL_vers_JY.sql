\! cls
/* ------ Strukturen ----- */

/* 
    Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/
USE boo;  -- DB schon vorhanden

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE test (
    name VARCHAR(50) NOT NULL DEFAULT '',
    age INT NOT NULL DEFAULT 0,
    id INT AUTO_INCREMENT PRIMARY KEY,
    UNIQUE (name, age)
);

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */

-- Doppelte Datensätze werden NICHT mehr zugelassen!
INSERT INTO test (name, age) VALUES ('Max', 35);
INSERT INTO test (name, age) VALUES ('Maxine', 29);
INSERT INTO test (name, age) VALUES ('Max', 35);     -- ❌ BLOCKIERT!
INSERT INTO test (name, age) VALUES ('Anna', 25);    -- ✅ OK

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;
