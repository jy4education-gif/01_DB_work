\! cls
/* ------  Strukturen ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test; -- db.table

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS boo.test (
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES("Max",35);
INSERT INTO boo.test(age,name) VALUES(29,"Maxine");
INSERT INTO boo.test VALUES();


-- Doppelte Datensätze werden NICHT mehr zugelassen !


/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;


