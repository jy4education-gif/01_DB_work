import { registerUser } from "./auth.js";

async function seed() {
    try {
        console.log("Starte Seeding...");
        await registerUser("Max", "max@example.com", "meinPasswort123");
        await registerUser("Erika", "erika@example.com", "sonnenschein88");
        await registerUser("Bob", "bob@example.com", "geheimnis!");
        console.log("✅ Drei Testnutzer erfolgreich angelegt!");
        process.exit(0);
    } catch (error) {
        console.error("❌ Fehler beim Seeding:", error.message);
        process.exit(1);
    }
}

seed();