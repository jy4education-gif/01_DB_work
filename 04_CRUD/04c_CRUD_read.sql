
\! cls

-- SELECT * FROM boo.customers;


-- SELECT 
--     vorname,
--     mail,
--     wohnort
-- FROM boo.customers;

# Begrenzen durch LIMIT
/*
SELECT 
    vorname,
    nachname,
    mail,
    wohnort
FROM boo.customers
-- LIMIT 10
LIMIT 10,20
;
*/

# Sortieren , numerisch
/*
SELECT 
    nachname AS Kundenname,
    age AS 'Alter'
FROM boo.customers
-- ORDER BY age ASC
ORDER BY age DESC
LIMIT 20
;
*/

# Sortieren , alphnumerisch / kombi
/*
SELECT 
    vorname,
    nachname AS Kundennamen,
    age AS 'Alter',
    wohnort
FROM boo.customers
ORDER BY wohnort ASC, age DESC
-- ORDER BY age DESC
-- LIMIT 20
;
*/


# Filtern mit WHERE
/*
SELECT 
    nachname AS Kundennamen,
    age AS 'Alter',
    wohnort
FROM boo.customers
WHERE wohnort = "Berlin"
-- ORDER BY wohnort ASC, age DESC
ORDER BY age DESC
LIMIT 20
;
*/

/*
SELECT 
    count((id))
FROM boo.customers
;
*/
