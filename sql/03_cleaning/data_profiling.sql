SELECT COUNT(*) AS total_rows
FROM staging_paysim;

SELECT * 
FROM staging_paysim
LIMIT 5;

SELECT DISTINCT type_text
FROM staging_paysim
ORDER BY type_text;