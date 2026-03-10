\! cls
/* String-Funktionen */

/*
    CONCAT() / Verknuepfung "string" + "string" ...
    UPPER() --> alles in Großbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGTH() --> String-Laenge
    REPLACE() --> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
    LINK: https://dev.mysql.com/doc/refman/5.6/en/string-functions.html
*/

# CONCAT() / Verknuepfung "string" + "string" ....
/*
SELECT
	ticker AS "SYM",
    c_name "Unternehmen", 
    concat("Ops: ",sector," : ",industry) "Operation"
FROM stocks.ccc
# ggf. Restriktionen
LIMIT 10;
*/

# UPPER() --> alles in Großbuchstaben
/*
SELECT
	ticker AS "SYM",
    upper(c_name) "Unternehmen"
FROM stocks.ccc
# ggf. Restriktionen
LIMIT 10;
*/


-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen)
/*
SELECT
	ticker AS "SYM",
    lower(c_name) "Unternehmen"
FROM stocks.ccc
# ggf. Restriktionen
LIMIT 10;
*/


# LENGTH() / char_length()--> String-Laenge
/*
SELECT
	ticker SYM,
    c_name Unternehmen,
    concat("Ops: ",sector," : ",industry) Operation,
    length(concat("Ops: ",sector,":",industry)) StrLen -- in Byte
    #char_length(concat("Ops: ",sector,":",industry)) StrLen -- in Chars
FROM stocks.ccc
ORDER BY StrLen DESC
LIMIT 20;
*/


# REPLACE() --> Ersetzen von Stringanteilen
/*
SELECT
	ticker AS "SYM",
    c_name "Unternehmen",
    -- replace(c_name,"Inc.","Incorporated") AS "Incorporated"
    replace(c_name,"Corp.","Corporation") AS "Corporation"
FROM stocks.ccc
-- WHERE c_name LIKE "%Inc."
WHERE c_name LIKE "%Corp."
LIMIT 20;
*/

# TRIM() --> Trimmen vor/nach String (Whitespace) Siehe Link
/*
SELECT
    ticker AS "SYM",
    c_name AS "Original",
    -- -- Entfernt Leerzeichen am Anfang und Ende
    -- trim(c_name) AS "Trimmed",
    -- -- Spezifisch: Nur führende Leerzeichen entfernen
    -- ltrim(c_name) AS "Only_Left",
    -- -- Spezifisch: Nur nachfolgende Leerzeichen entfernen
    -- rtrim(c_name) AS "Only_Right",
    -- -- Fortgeschritten: Entfernt ein spezifisches Zeichen (z.B. ein Punkt am Ende)
    trim(TRAILING '.' FROM c_name) AS "No_Dot_At_End"
FROM stocks.ccc
# Meist genutzt, um Datenfehler zu finden:
-- WHERE c_name LIKE " %" OR c_name LIKE "% "
LIMIT 20;
*/


