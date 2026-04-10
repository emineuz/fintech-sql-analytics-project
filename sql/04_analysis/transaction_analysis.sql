SELECT COUNT(*) AS total_transactions
FROM clean_paysim;

SELECT DISTINCT type
FROM clean_paysim
ORDER BY type;

SELECT
    type,
    COUNT(*) AS transaction_count
FROM clean_paysim
GROUP BY type
ORDER BY transaction_count DESC;
--identify which category has the highest transaction volume.

SELECT
    type,
    ROUND(SUM(amount), 2) AS total_amount
FROM clean_paysim
GROUP BY type
ORDER BY total_amount DESC;
--identify which category has the highest transaction amount.

SELECT
    type,
    ROUND(AVG(amount), 2) AS avg_amount
FROM clean_paysim
GROUP BY type
ORDER BY avg_amount DESC;

SELECT
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount
FROM clean_paysim;

SELECT
    COUNT(*) AS total_transactions,
    SUM(isfraud) AS fraud_transactions,
    ROUND(100.0 * SUM(isfraud) / COUNT(*), 4) AS fraud_rate_pct
FROM clean_paysim;

--calculated the fraud rate to determine if the dataset was balanced.

SELECT
    type,
    COUNT(*) AS total_transactions,
    SUM(isfraud) AS fraud_count
FROM clean_paysim
GROUP BY type
ORDER BY fraud_count DESC;


SELECT
    type,
    COUNT(*) AS total_transactions,
    SUM(isfraud) AS fraud_count
FROM clean_paysim
GROUP BY type
ORDER BY fraud_count DESC;
--In which types of operations is fraud concentrated?



