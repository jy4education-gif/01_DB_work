// import mysql from "mysql2/promise";
// import dotenv from "dotenv";
// import path from "path";
// import { fileURLToPath } from "url";

// // Stellt sicher, dass die .env immer relativ zur db.js gefunden wird
// const __filename = fileURLToPath(import.meta.url);
// const __dirname = path.dirname(__filename);

// // Für die Pfadspezies ;-) : geht von /server einen Ordner hoch (..), um die .env im Hauptverzeichnis zu finden
// dotenv.config({ path: path.join(__dirname, "../.env") });

// console.log("--- DB DEBUG START ---");
// console.log("User:", process.env.DB_USER || "NICHT GEFUNDEN");
// console.log("Host:", process.env.DB_HOST || "NICHT GEFUNDEN");
// console.log("--- DB DEBUG END ---");

// export const db = await mysql.createPool({
//   host: process.env.DB_HOST,
//   user: process.env.DB_USER,
//   password: process.env.DB_PASS,
//   database: process.env.DB_NAME,
//   waitForConnections: true,
//   connectionLimit: 10,
//   queueLimit: 0,
//   ssl: { rejectUnauthorized: false }
// });

import mysql from "mysql2/promise";
import dotenv from "dotenv";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Wir testen beide Pfade, falls du unsicher bist, wo die Datei liegt
const envPath = path.join(__dirname, ".env"); 
const result = dotenv.config({ path: envPath });

console.log("--- DB CHECK ---");
if (result.error) {
    console.error("❌ DOTENV FEHLER:", result.error.message);
} else {
    console.log("✅ .env Datei wurde geladen aus:", envPath);
}

console.log("Gefundener Host:", process.env.DB_HOST || "LEER");
console.log("Gefundener User:", process.env.DB_USER || "LEER");
console.log("Passwort Länge:", process.env.DB_PASS ? process.env.DB_PASS.length : "0");
console.log("--- CHECK ENDE ---");

export const db = await mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  ssl: { rejectUnauthorized: false }
});