import { registerUser } from "./auth.js";

async function seed() {
    try {
        console.log("Starte Seeding...");
        await registerUser("Grizabella", "grizabella@westend1981.com", "meinPasswort123");
        await registerUser("Rum Rum Tugger", "rum_rum_tugger@westend1981.com", "sonnenschein88");
        await registerUser("Old Deuteronomy", "old_deuteronomy@westend1981.com", "geheimnis!");
        console.log("✅ Drei Testnutzer erfolgreich angelegt!");
        process.exit(0);
    } catch (error) {
        console.error("❌ Fehler beim Seeding:", error.message);
        process.exit(1);
    }
}

seed();