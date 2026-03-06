import { registerUser } from "./auth.js";

async function seed() {
    try {
        console.log("Starte Seeding...");
        await registerUser("Elaine Paige", "grizabella@westend1981.com", "meinPasswort123");
        await registerUser("Paul Nicholas", "rum_rum_tugger@westend1981.com", "sonnenschein88");
        await registerUser("Brian Blessed", "old_deuteronomy@westend1981.com", "geheimnis!");
        console.log("✅ Drei Testnutzer erfolgreich angelegt!");
        process.exit(0);
    } catch (error) {
        console.error("❌ Fehler beim Seeding:", error.message);
        process.exit(1);
    }
}

seed();