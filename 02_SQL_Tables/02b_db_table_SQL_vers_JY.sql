\! cls
/* ------ Strukturen ----- */

/* 
    NULL wird nicht mehr zugelassen
    DEFAULT-Werte eintragen
*/

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE test (
    name VARCHAR(50) NOT NULL DEFAULT 'Hallo!',
    age INT NOT NULL DEFAULT 0,
    id INT AUTO_INCREMENT PRIMARY KEY,
    CONSTRAINT uniq_person UNIQUE(name, age) -- uniq_person als Constraint-Name optional
    -- eigentlich Keine id mehr nötig!
);

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */

-- ABER: Doppelte Datensätze werden zugelassen !
INSERT INTO test (name, age) VALUES ('Max', 35);
INSERT INTO test (name, age) VALUES ('Maxine', 29);
INSERT INTO test (name, age) VALUES (NULL, NULL);
INSERT INTO test (name, age) VALUES ('Max', 35);
INSERT INTO test (name, age) VALUES ('Maxine', 29);
INSERT INTO test (name, age) VALUES (NULL, NULL);

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;
