\! cls
/* ------  Strukturen ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/

/* Wir wollen nun direkt auf DATBASE und TABLES via Punktnotation zugreifen! /*

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE boo.test (
    name VARCHAR(50) NOT NULL DEFAULT 'TBA',
    age INT NOT NULL DEFAULT 0,
    id INT AUTO_INCREMENT PRIMARY KEY,
    UNIQUE (name, age)
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test (name, age) VALUES ('Max', 35);
INSERT INTO boo.test (name, age) VALUES ('Maxine', 29);
INSERT INTO boo.test VALUES();
-- Doppelte Datensätze werden NICHT mehr zugelassen !
INSERT INTO boo.test (name, age) VALUES ('Max', 35);     -- Fehler: Duplicate entry

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;
