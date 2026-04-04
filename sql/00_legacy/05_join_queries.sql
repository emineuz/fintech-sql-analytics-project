SELECT 
    c.customer_id,
    c.full_name,
    a.account_id,
    a.account_type,
    a.status
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id;

SELECT 
    a.account_id,
    a.account_type,
    t.transaction_id,
    t.transaction_date,
    t.amount,
    t.status
FROM accounts a
INNER JOIN transactions t
    ON a.account_id = t.account_id;

SELECT 
    m.merchant_name,
    m.category,
    t.transaction_id,
    t.amount,
    t.status
FROM merchants m
INNER JOIN transactions t
    ON m.merchant_id = t.merchant_id;

SELECT 
    c.full_name,
    a.account_id,
    a.account_type,
    t.transaction_id,
    t.amount,
    t.status,
    t.transaction_date
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id;

SELECT 
    c.full_name,
    c.city,
    a.account_type,
    t.transaction_id,
    t.amount,
    t.status,
    m.merchant_name,
    m.category
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
INNER JOIN merchants m
    ON t.merchant_id = m.merchant_id;

SELECT 
    c.full_name,
    t.transaction_id,
    t.amount,
    t.status
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.status = 'failed';

SELECT 
    c.full_name,
    t.transaction_id,
    t.amount
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
ORDER BY t.amount DESC
LIMIT 3;


SELECT 
    c.full_name,
    COUNT(t.transaction_id) AS total_transactions
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.full_name;


SELECT 
    c.full_name,
    COUNT(t.transaction_id) AS total_transactions
FROM customers c
INNER JOIN accounts a
    ON c.customer_id = a.customer_id
INNER JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.full_name
ORDER BY total_transactions DESC;


SELECT 
    m.merchant_name,
    COUNT(t.transaction_id) AS total_transactions
FROM merchants m
INNER JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY m.merchant_name
ORDER BY total_transactions DESC;

SELECT 
    m.merchant_name,
    SUM(t.amount) AS total_volume
FROM merchants m
INNER JOIN transactions t
    ON m.merchant_id = t.merchant_id
GROUP BY m.merchant_name
ORDER BY total_volume DESC;



