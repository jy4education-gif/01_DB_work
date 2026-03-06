-- DROP DATABASE IF EXISTS boo.users;
-- CREATE DATABASE boo.users;
-- USE boo.users;

-- CREATE TABLE boo.users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_name VARCHAR(50) NOT NULL UNIQUE,
--     email VARCHAR(100) NOT NULL UNIQUE,
--     pwd_hash VARCHAR(255) NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- Löschen der Datenbank, falls vorhanden, und erneutes Erstellen
DROP DATABASE IF EXISTS user_db;
CREATE DATABASE user_db;
USE user_db;

-- Tabelle erstellen
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    pwd_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
