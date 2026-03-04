\! cls 
/* ------  Strukturen ----- */

/* Blockkommentar: Erstreckt sich über mehrere Zeilen */
#  Einzeiliger Kommentar (Standard in MySQL)
-- Einzeiliger Kommentar (SQL-Standard, benötigt ein Leerzeichen nach den Strichen)

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
-- DROP DATABASE IF EXISTS boo; 

/* DB boo anlegen, falls noch nicht vorhanden*/
-- CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
-- USE boo;

/* Tabelle anlegen */
-- CREATE TABLE beispiel (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     erstellt_am TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

/* Alle Tabellen in der DB anzeigen */
-- SHOW TABLES;

/* Struktur der Tabelle anzeigen */
-- DESCRIBE beispiel; 
-- Alternativ: SHOW COLUMNS FROM beispiel;

/* ----- Daten ------- */

/* Datensatz einfügen */
-- INSERT INTO beispiel (name) VALUES ('Mentor-Test');

/* ---- Inhalte der Tabelle anzeigen ---- */
-- SELECT * FROM beispiel;