\! cls 
/* ------  Strukturen ----- */

/* Blockkommentar: Erstreckt sich über mehrere Zeilen */
#  Einzeiliger Kommentar (Standard in MySQL)
-- Einzeiliger Kommentar (SQL-Standard, benötigt ein Leerzeichen nach den Strichen)

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;
-- DROP DATABEAS IF EXISTS beispiel; 

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle anlegen */
-- CREATE TABLE IF NOT EXISTS beispiel (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     erstellt_am TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );
CREATE TABLE IF NOT EXISTS test (
    name VARCHAR(20),
    age INT,
    erstellt_am TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
-- DESCRIBE beispiel; 
-- Alternativ: 
-- SHOW COLUMNS FROM beispiel;
-- SHOW COLUMNS FROM test;
DESCRIBE test;

/* Datensatz einfügen */
INSERT INTO test(name,age) VALUES("Max",35);
INSERT INTO test(age,name) VALUES(29,"Maxine");
INSERT INTO test VALUES();
-- INSERT INTO beispiel (name) VALUES ('Mentor-Test');
-- INSERT INTO test (name) VALUES ('Test_01')

/* ---- Inhalte der Tabelle anzeigen ---- */
-- SELECT * FROM beispiel;
SELECT * FROM test;
