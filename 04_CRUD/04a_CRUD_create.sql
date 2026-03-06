# Vorbereitung SELECT 
\! cls

DROP TABLE IF EXISTS boo.customers;


# Tabelle erzeugen
CREATE TABLE IF NOT EXISTS boo.customers (
    id INT NOT NULL,
    name VARCHAR(100),
    adresse VARCHAR(255),
    telefon VARCHAR(20),
    mail VARCHAR(100),
    age INT,
    bundesland VARCHAR(80),
    wohnort VARCHAR(100)
);

# Inserts
INSERT INTO boo.customers (id, name, adresse, telefon, mail, age, bundesland, wohnort)
VALUES
(1, 'Sophia Mueller', 'Musterstrasse 1', '01234/56789', 'sophia.mueller@example.de', 25, 'Nordrhein-Westfalen', 'Koeln'),
(2, 'Noah Schmidt', 'Hauptstrasse 2', '0221/123456', 'noah.schmidt@example.de', 30, 'Nordrhein-Westfalen', 'Duesseldorf'),
(3, 'Emilia Weber', 'Bahnhofstrasse 3', '030/987654', 'emilia.weber@example.de', 28, 'Berlin', 'Berlin'),
(4, 'Leon Klein', 'Schulstrasse 4', '040/111111', 'leon.klein@example.de', 32, 'Hamburg', 'Hamburg'),
(5, 'Mia Fischer', 'Marktstrasse 5', '0911/222222', 'mia.fischer@example.de', 26, 'Bayern', 'Nuernberg'),
(6, 'Matteo Braun', 'Friedrichstrasse 6', '0711/333333', 'matteo.braun@example.de', 29, 'Baden-Wuerttemberg', 'Stuttgart'),
(7, 'Hanna Meier', 'Koenigstrasse 7', '0231/444444', 'hanna.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
(8, 'Paul Becker', 'Bahnhofsplatz 8', '0611/555555', 'paul.becker@example.de', 31, 'Hessen', 'Frankfurt'),
(9, 'Ella Hoffmann', 'Rathausstrasse 9', '0211/666666', 'ella.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Duesseldorf'),
(10, 'Liam Schaefer', 'Schlossstrasse 10', '089/777777', 'liam.schaefer@example.de', 33, 'Bayern', 'Muenchen'),
(11, 'Lina Schneider', 'Friedrich-Ebert-Strasse 11', '0228/888888', 'lina.schneider@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
(12, 'Elias Mueller', 'Kurfuerstenstrasse 12', '030/999999', 'elias.mueller@example.de', 30, 'Berlin', 'Berlin'),
(13, 'Klara Fuchs', 'Hauptstrasse 13', '0711/000000', 'klara.fuchs@example.de', 28, 'Baden-Wuerttemberg', 'Stuttgart'),
(14, 'Louis Peters', 'Marktstrasse 14', '040/111111', 'louis.peters@example.de', 32, 'Hamburg', 'Hamburg'),
(15, 'Ida Weber', 'Bahnhofstrasse 15', '0911/222222', 'ida.weber@example.de', 26, 'Bayern', 'Nuernberg'),
(16, 'Finn Hansen', 'Friedrichstrasse 16', '0711/333333', 'finn.hansen@example.de', 29, 'Baden-Wuerttemberg', 'Stuttgart'),
(17, 'Mathilda Schmid', 'Koenigstrasse 17', '0231/444444', 'mathilda.schmid@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
(18, 'Emil Schneider', 'Bahnhofsplatz 18', '0611/555555', 'emil.schneider@example.de', 31, 'Hessen', 'Frankfurt'),
(19, 'Emma Hoffmann', 'Rathausstrasse 19', '0211/666666', 'emma.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Duesseldorf'),
(20, 'Henry Schaefer', 'Schlossstrasse 20', '089/777777', 'henry.schaefer@example.de', 33, 'Bayern', 'Muenchen'),
(21, 'Lia Fuchs', 'Friedrich-Ebert-Strasse 21', '0228/888888', 'lia.fuchs@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
(22, 'Oskar Mueller', 'Kurfuerstenstrasse 22', '030/999999', 'oskar.mueller@example.de', 30, 'Berlin', 'Berlin'),
(23, 'Mila Peters', 'Hauptstrasse 23', '0711/000000', 'mila.peters@example.de', 28, 'Baden-Wuerttemberg', 'Stuttgart'),
(24, 'Daniel Hansen', 'Marktstrasse 24', '040/111111', 'daniel.hansen@example.de', 32, 'Hamburg', 'Hamburg'),
(25, 'Frieda Weber', 'Bahnhofstrasse 25', '0911/222222', 'frieda.weber@example.de', 26, 'Bayern', 'Nuernberg'),
(26, 'Sebastian Braun', 'Friedrichstrasse 26', '0711/333333', 'sebastian.braun@example.de', 29, 'Baden-Wuerttemberg', 'Stuttgart'),
(27, 'Julia Meier', 'Koenigstrasse 27', '0231/444444', 'julia.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
(28, 'Alexander Becker', 'Bahnhofsplatz 28', '0611/555555', 'alexander.becker@example.de', 31, 'Hessen', 'Frankfurt'),
(29, 'Sarah Hoffmann', 'Rathausstrasse 29', '0211/666666', 'sarah.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Duesseldorf'),
(30, 'Maximilian Schaefer', 'Schlossstrasse 30', '089/777777', 'maximilian.schaefer@example.de', 33, 'Bayern', 'Muenchen'),
(31, 'Lisa Schneider', 'Friedrich-Ebert-Strasse 31', '0228/888888', 'lisa.schneider@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
(32, 'Lukas Mueller', 'Kurfuerstenstrasse 32', '030/999999', 'lukas.mueller@example.de', 30, 'Berlin', 'Berlin'),
(33, 'Katharina Fuchs', 'Hauptstrasse 33', '0711/000000', 'katharina.fuchs@example.de', 28, 'Baden-Wuerttemberg', 'Stuttgart'),
(34, 'Benjamin Peters', 'Marktstrasse 34', '040/111111', 'benjamin.peters@example.de', 32, 'Hamburg', 'Hamburg'),
(35, 'Marie Weber', 'Bahnhofstrasse 35', '0911/222222', 'marie.weber@example.de', 26, 'Bayern', 'Nuernberg'),
(36, 'Christian Braun', 'Friedrichstrasse 36', '0711/333333', 'christian.braun@example.de', 29, 'Baden-Wuerttemberg', 'Stuttgart'),
(37, 'Anna Meier', 'Koenigstrasse 37', '0231/444444', 'anna.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
(38, 'Stefan Becker', 'Bahnhofsplatz 38', '0611/555555', 'stefan.becker@example.de', 31, 'Hessen', 'Frankfurt'),
(39, 'Jasmin Hoffmann', 'Rathausstrasse 39', '0211/666666', 'jasmin.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Duesseldorf'),
(40, 'Michael Schaefer', 'Schlossstrasse 40', '089/777777', 'michael.schaefer@example.de', 33, 'Bayern', 'Muenchen'),
(41, 'Sandra Schneider', 'Friedrich-Ebert-Strasse 41', '0228/888888', 'sandra.schneider@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
(42, 'Thomas Mueller', 'Kurfuerstenstrasse 42', '030/999999', 'thomas.mueller@example.de', 30, 'Berlin', 'Berlin'),
(43, 'Christine Fuchs', 'Hauptstrasse 43', '0711/000000', 'christine.fuchs@example.de', 28, 'Baden-Wuerttemberg', 'Stuttgart'),
(44, 'Jan Peters', 'Marktstrasse 44', '040/111111', 'jan.peters@example.de', 32, 'Hamburg', 'Hamburg'),
(45, 'Frank Weber', 'Bahnhofstrasse 45', '0911/222222', 'frank.weber@example.de', 26, 'Bayern', 'Nuernberg'),
(46, 'Wolfgang Braun', 'Friedrichstrasse 46', '0711/333333', 'wolfgang.braun@example.de', 29, 'Baden-Wuerttemberg', 'Stuttgart'),
(47, 'Petra Meier', 'Koenigstrasse 47', '0231/444444', 'petra.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
(48, 'Andreas Becker', 'Bahnhofsplatz 48', '0611/555555', 'andreas.becker@example.de', 31, 'Hessen', 'Frankfurt'),
(49, 'Sabine Hoffmann', 'Rathausstrasse 49', '0211/666666', 'sabine.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Duesseldorf'),
(50, 'Hans Schaefer', 'Schlossstrasse 50', '089/777777', 'hans.schaefer@example.de', 33, 'Bayern', 'Muenchen');


SELECT * FROM boo.customers;