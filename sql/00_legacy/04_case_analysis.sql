SELECT 
    transaction_id,
    amount,
    CASE 
        WHEN amount > 500 THEN 'high_value'
        ELSE 'low_value'
    END AS transaction_category
FROM transactions;

SELECT 
    transaction_id,
    amount,
    CASE 
        WHEN amount > 1000 THEN 'very_high'
        WHEN amount > 500 THEN 'high'
        ELSE 'low'
    END AS level
FROM transactions;

SELECT 
    full_name,
    age,
    CASE 
        WHEN age < 25 THEN 'young'
        WHEN age BETWEEN 25 AND 35 THEN 'adult'
        ELSE 'senior'
    END AS age_group
FROM customers;

SELECT 
    transaction_id,
    status,
    CASE 
        WHEN status = 'success' THEN 'completed'
        WHEN status = 'failed' THEN 'problem'
        ELSE 'in_progress'
    END AS status_label
FROM transactions;

SELECT 
    COUNT(CASE WHEN status = 'success' THEN 1 END) AS success_count
FROM transactions;

SELECT 
    COUNT(CASE WHEN status = 'success' THEN 1 END) * 1.0 / COUNT(*) AS success_rate
FROM transactions;

SELECT 
    payment_method,
    COUNT(*) AS total,
    COUNT(CASE WHEN status = 'success' THEN 1 END) AS success_count
FROM transactions
GROUP BY payment_method;

SELECT 
    CASE 
        WHEN amount > 500 THEN 'high'
        ELSE 'low'
    END AS category,
    COUNT(*) AS total_transactions
FROM transactions
GROUP BY category;

SELECT 
    COUNT(*) AS total,
    COUNT(CASE WHEN amount > 500 THEN 1 END) AS high_transactions
FROM transactions;

