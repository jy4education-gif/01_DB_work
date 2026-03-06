# 01_DB_work

03b_db_userDB_SQL Architektur:

user-login-project
│
├─ db
│   └─ schema.sql
│
├─ server
│   ├─ app.js
│   ├─ db.js
│   ├─ auth.js
│   └─ routes.js
│
├─ package.json
└─ .env
Projektstatus: Remote Auth-Service
1. Übersicht & Zielsetzung
Entwicklung eines modularen Authentifizierungs-Services auf Basis von Node.js. Das System ermöglicht die Registrierung und Verifizierung von Benutzern gegen eine Remote-MySQL-Datenbank unter Einhaltung moderner Sicherheitsstandards (OWASP).

2. Tech-Stack & Architektur
Das Projekt basiert auf einer Drei-Schichten-Architektur (Client - Logic - Data):

Backend: Node.js mit Express-Framework.

Datenbank: MySQL 8.0 (gehostet auf Linode/Remote-Instanz).

Sicherheit: * Argon2: Password-Hashing der nächsten Generation (resistent gegen GPU/ASIC-Angriffe).

JWT (JSON Web Tokens): Geplant für zustandsloses Session-Management.

Infrastruktur: Nginx als geplanter Reverse Proxy zur SSL-Terminierung und Lastverteilung.

3. Aktueller Implementierungsstand
Datenbank-Schema: Tabellenstruktur für User-Management ist definiert und initialisiert.

Backend-Logik: * Registrierungs-Endpunkt (/register) mit Passwort-Hashing via Argon2 ist implementiert.

Login-Endpunkt (/login) mit Hash-Vergleichslogik ist vorbereitet.

Konnektivität: Erfolgreiche Anbindung der Datenbank über lokale SQL-Clients (via SSH-Tunnel).

4. Aktuelle Problemanalyse: Error 1045 (Access Denied)
Trotz korrekter Zugangsdaten und funktionalem SSH-Tunnel schlägt der direkte Verbindungsaufbau der Node.js-Applikation sowie der CLI (ohne Tunnel) mit folgendem Fehler fehl:
ERROR 1045 (28000): Access denied for user 'remote_user'@'[Lokale-IP]'

Diagnose:
Host-Restriktion: Der MySQL-User remote_user ist serverseitig vermutlich nur für Verbindungen von localhost autorisiert. Da die Applikation von einer externen IP zugreift, verweigert der Datenbank-Server den Handshake.

Firewall/Plugin: Der Port 3306 ist zwar erreichbar, aber die Kombination aus Quell-IP und Authentifizierungs-Plugin (caching_sha2_password vs. mysql_native_password) verhindert den Zugriff im aktuellen Sicherheitskontext.

5. Nächste Schritte (Roadmap)
Infrastruktur-Fix: Anpassung der MySQL-Privilegien auf dem Remote-Server (Anpassung des Hosts von localhost auf % oder spezifische IP-Ranges).

Session-Management: Integration der JWT-Logik zur Absicherung der Endpunkte.

Deployment: Finalisierung der Nginx-Konfiguration für den Produktivbetrieb unter HTTPS.