SELECT
    type,
    COUNT(*) AS total_tx,
    SUM(isfraud) AS fraud_tx,
    ROUND(100.0 * SUM(isfraud) / COUNT(*), 4) AS fraud_rate_pct
FROM clean_paysim
GROUP BY type
ORDER BY fraud_rate_pct DESC;
-- which transaction type is more risky?

SELECT DISTINCT type
FROM clean_paysim
WHERE isfraud = 1;

SELECT
    COUNT(*) FILTER (WHERE isflaggedfraud = 1) AS flagged,
    COUNT(*) FILTER (WHERE isfraud = 1) AS actual_fraud
FROM clean_paysim;

SELECT
    isflaggedfraud,
    isfraud,
    COUNT(*) AS count
FROM clean_paysim
GROUP BY isflaggedfraud, isfraud
ORDER BY count DESC;

SELECT
    AVG(amount) FILTER (WHERE isfraud = 1) AS avg_fraud_amount,
    AVG(amount) FILTER (WHERE isfraud = 0) AS avg_normal_amount
FROM clean_paysim;

SELECT
    CASE 
        WHEN amount < 1000 THEN 'LOW'
        WHEN amount < 10000 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS amount_group,
    COUNT(*) AS total,
    SUM(isfraud) AS fraud_count
FROM clean_paysim
GROUP BY amount_group
ORDER BY amount_group;
--Does the risk increase as the amount increases?

SELECT
    COUNT(*) AS suspicious_cases
FROM clean_paysim
WHERE oldbalanceOrg - amount != newbalanceOrig
AND isfraud = 1;
--Do fraud transactions create an "balance inconsistencies"?


 FRAUD ANALYSIS INSIGHTS
-- ================================

-- 1. Fraud detection system performance:
-- The system fails to detect the majority of fraudulent transactions.
-- Only 16 out of over 8,000 fraud cases were flagged, indicating a very high false negative rate.

-- 2. Transaction amount behavior:
-- Fraudulent transactions have a significantly higher average amount (~1.46M)
-- compared to normal transactions (~178K), suggesting that high-value transactions are riskier.

-- 3. Amount-based fraud distribution:
-- Most fraudulent activities occur in high-value transactions,
-- indicating a strong correlation between transaction size and fraud likelihood.

-- 4. Balance inconsistency:
-- A small number of fraud cases show inconsistencies in account balances,
-- which may indicate anomalous or manipulated transactions.

-- Overall conclusion:
-- Fraud patterns are strongly associated with transaction amount and transaction type,
-- while the current fraud detection mechanism is highly ineffective.
