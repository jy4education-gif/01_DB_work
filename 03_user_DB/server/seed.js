// import { registerUser } from "./auth.js";

// async function seed() {
//     try {
//         console.log("Starte Seeding...");
//         await registerUser("Elaine Paige", "grizabella@westend1981.com", "meinPasswort123");
//         await registerUser("Paul Nicholas", "rum_rum_tugger@westend1981.com", "sonnenschein88");
//         await registerUser("Brian Blessed", "old_deuteronomy@westend1981.com", "geheimnis!");
//         console.log("✅ Drei Testnutzer erfolgreich angelegt!");
//         process.exit(0);
//     } catch (error) {
//         console.error("❌ Fehler beim Seeding:", error.message);
//         process.exit(1);
//     }
// }

// seed();
import { registerUser } from "./auth.js";

async function seed() {
    // Definition der Testdaten in einem Array für bessere Wartbarkeit
    const users = [
        { name: "Elaine Paige", email: "grizabella@westend1981.com", password: "meinPasswort123" },
        { name: "Paul Nicholas", email: "rum_rum_tugger@westend1981.com", password: "sonnenschein88" },
        { name: "Brian Blessed", email: "old_deuteronomy@westend1981.com", password: "geheimnis!" }
    ];

    try {
        console.log("Starte Seeding...");

        // Iteration über das Array, um jeden Nutzer zu registrieren
        for (const user of users) {
            await registerUser(user.name, user.email, user.password);
        }

        // Dynamische Ermittlung der Anzahl über die .length Eigenschaft
        console.log(`✅ ${users.length} Testnutzer erfolgreich angelegt!`);
        process.exit(0);
    } catch (error) {
        console.error("❌ Fehler beim Seeding:", error.message);
        process.exit(1);
    }
}

seed();