
DROP DATABASE IF EXISTS user_db;
CREATE DATABASE user_db;
USE user_db;

-- Tabelle erstellen
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    pwd_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

TRUNCATE TABLE users; 
INSERT INTO users (user_name, email, pwd_hash) VALUES 
('Grizabella', 'griz@cats.com', '$argon2id$v=19$m=65536,t=3,p=4$fXpS8vD4kL2mQ9zN1bV3cA$v5S2K9L8mJ1vC3xN7mQ0pW4rT6yU8iI9oO0pP1qQ2r'),
('OldDeuteronomy', 'old@cats.com', '$argon2id$v=19$m=65536,t=3,p=4$aB2c3D4e5F6g7H8i9J0kL1$uVwXyZ1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r'),
('RumTumTugger', 'tugger@cats.com', '$argon2id$v=19$m=65536,t=3,p=4$xYz9w8v7u6t5s4r3q2p1o0$mN2bV3cX4zL5kJ6hH7gG8fF9dD0sS1aA2qW3eE4r5t');

SELECT id, user_name, email, LEFT(pwd_hash, 30) AS hash_visual FROM users;