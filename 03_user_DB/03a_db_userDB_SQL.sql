\! cls
/* USER TAB. Version 1 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(50) NOT NULL UNIQUE,
    familyName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL DEFAULT 'TBA'
);

/* Struktur */
DESCRIBE boo.users;


/* Daten */
INSERT INTO boo.users(userName,familyName,firstName) 
VALUES ('johndoe123', 'Doe', 'John');

INSERT INTO boo.users(userName,familyName,firstName) 
VALUES ('max123', 'Max', 'Moritz');

INSERT INTO boo.users(userName,familyName,firstName) 
VALUES ('Sybille_die_Stille', 'Sybille', 'Stille');

-- INSERT INTO boo.users(userName,familyName,firstName) 
-- VALUES ('johndoe123', 'Max', 'Moritz')

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;


