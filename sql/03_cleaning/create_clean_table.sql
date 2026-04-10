DROP TABLE IF EXISTS clean_paysim;

CREATE TABLE clean_paysim (
    step INTEGER,
    type TEXT,
    amount NUMERIC,
    nameOrig TEXT,
    oldbalanceOrg NUMERIC,
    newbalanceOrig NUMERIC,
    nameDest TEXT,
    oldbalanceDest NUMERIC,
    newbalanceDest NUMERIC,
    isFraud INTEGER,
    isFlaggedFraud INTEGER
);

INSERT INTO clean_paysim
SELECT
    step_text::INTEGER,
    type_text::TEXT,
    amount_text::NUMERIC,
    nameorig_text::TEXT,
    oldbalanceorg_text::NUMERIC,
    newbalanceorig_text::NUMERIC,
    namedest_text::TEXT,
    oldbalancedest_text::NUMERIC,
    newbalancedest_text::NUMERIC,
    isfraud_text::INTEGER,
    isflaggedfraud_text::INTEGER
FROM staging_paysim;

SELECT COUNT(*) FROM clean_paysim;
SELECT * FROM clean_paysim LIMIT 5;

SELECT COUNT(*) AS total_rows
FROM clean_paysim;

SELECT DISTINCT type
FROM clean_paysim
ORDER BY type;

SELECT MIN(amount) AS min_amount,
       MAX(amount) AS max_amount
FROM clean_paysim;

SELECT
    COUNT(*) FILTER (WHERE amount IS NULL) AS null_amount,
    COUNT(*) FILTER (WHERE type IS NULL) AS null_type
FROM clean_paysim;

