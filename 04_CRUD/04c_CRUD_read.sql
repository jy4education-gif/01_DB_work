\! cls

-- SELECT * FROM boo.customers;


-- SELECT 
--     name,
--     mail,
--     wohnort
-- FROM boo.customers;

# Begrenzen durch LIMIT
/*
SELECT 
    name,
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
    name AS Kundennamen,
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
    name AS Kundennamen,
    age AS 'Alter',
    wohnort
FROM boo.customers
ORDER BY wohnort ASC, age DESC
-- ORDER BY age DESC
-- LIMIT 20
;
*/

# Filtern mit WHERE
-- SELECT 
--     name AS Kundennamen,
--     age AS 'Alter',
--     wohnort
-- FROM boo.customers
-- WHERE wohnort = "Berlin"
-- -- ORDER BY wohnort ASC, age DESC
-- ORDER BY age DESC
-- LIMIT 20
-- ;

-- SELECT 
--     count((id))
--     -- name AS Kundennamen
-- FROM boo.customers
-- LIMIT SELECT count(id) FROM boo.customers - 20 , 
-- ;