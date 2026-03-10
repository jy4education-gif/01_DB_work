\! cls
/* QUERIES - count()*/

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

# WELCHE verschiedenen Sektoren gibt es?
/*
SELECT
    DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;
*/

# WIEVIELE verschiedene Sektoren gibt es?
/*
SELECT
    count(DISTINCT sector) "Anzahl Industriesektoren"
FROM stocks.ccc
;
*/

# WELCHE verschiedenen Branchen ?
# WIEVIELE verschiedene Branchen ?
/*
SELECT
    DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC
;
SELECT
    count(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc
;
*/

# Wieviele VERSCHIEDENE Branchen gibt es 
# in den jeweiligen Industriesektoren?
/*
SELECT
    sector Industriesektoren, -- nicht aggregiert / organisch
    count(DISTINCT industry) AS Branchen -- aggregiert / durch eine Fkt. entstanden
FROM stocks.ccc
WHERE sector LIKE "Co%" -- Filter in NICHT aggr.(organischen) Feldern
GROUP BY sector -- bei Kombination organisch /aggr.
HAVING Branchen > 10 -- Filter in aggr. Felder / nach GROUP
ORDER by Branchen DESC
;
*/

# GROUP BY mit mehreren Feldern:
/*
SELECT
    sector,
    payouts,
    COUNT(DISTINCT industry) AS Branchen
FROM stocks.ccc
WHERE sector LIKE 'Co%'
GROUP BY sector, payouts
HAVING COUNT(DISTINCT industry) > 2;
*/

# Subquery in der FROM-Klausel - Aggregat als normale Spalte:
-- /*
-- Innerer Aufbau um Aggregat berechnen:
-- SELECT
--     sector,
--     COUNT(DISTINCT industry) AS Branchen -- Aggregat, das in der äußeren Abfrage als normale Spalte behandelt wird
-- FROM stocks.ccc
-- WHERE sector LIKE 'Co%'
-- GROUP BY sector
-- aus dem Aggregat, wird in der Klausel jetzt eine normale Spalte:
SELECT
    Branchen,              
    COUNT(*) AS Anzahl_Sektoren
FROM (
    SELECT
        sector,
        COUNT(DISTINCT industry) AS Branchen
    FROM stocks.ccc
    WHERE sector LIKE 'Co%'
    GROUP BY sector
) AS t -- gibt der abgeleiteten Tabelle (Derived Table) einen Namen, damit die äußere überhaupt darauf zugreifen kann!
GROUP BY Branchen
HAVING Branchen > 2
;
-- */

# Wieviele VERSCHIEDENE Unternehmen gibt es 
# in den jeweiligen Branchen?
/*
SELECT
    industry Branchen, -- nicht aggregiert / organisch
    count(c_name) AS Unternehmen -- aggregiert / durch eine Fkt. entstanden
FROM stocks.ccc
GROUP BY Branchen -- bei Kombination organisch /aggr.
ORDER by Unternehmen DESC
;
*/