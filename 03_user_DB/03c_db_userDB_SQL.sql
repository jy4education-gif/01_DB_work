/* USER TAB. Version 2 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(64) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
INSERT INTO boo.users (userName, familyName, firstName, userPwd)
VALUES ('johndoe123', 'Doe', 'John', SHA2('1234', 256));

INSERT INTO boo.users (userName, familyName, firstName, userPwd)
VALUES ('emilybrown22', 'Brown', 'Emily', SHA2('7xU#', 256));

INSERT INTO boo.users (userName, familyName, firstName, userPwd)
VALUES ('michaelsmith7', 'Smith', 'Michael', SHA2('user1234', 256));

/* Inhalte - Ergebnistabelle */
SELECT * FROM boo.users;