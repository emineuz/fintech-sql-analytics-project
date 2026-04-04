SELECT *
FROM customers
WHERE age > 30;

SELECT *
FROM customers
WHERE city = 'Istanbul' AND segment = 'premium';

SELECT DISTINCT city
FROM customers;

SELECT COUNT(*)
FROM customers;

SELECT COUNT(*)
FROM customers
WHERE city = 'Istanbul';

SELECT COUNT(DISTINCT city)
FROM customers;

SELECT COUNT(*)
FROM customers
WHERE segment = 'premium';

SELECT COUNT(*)
FROM accounts
WHERE status = 'active';

SELECT *
FROM accounts
WHERE status = 'inactive';


SELECT *
FROM transactions
WHERE status = 'failed';

SELECT *
FROM transactions
WHERE payment_method = 'card' AND status = 'success';

SELECT *
FROM transactions
WHERE amount > 500;

SELECT *
FROM transactions
WHERE status = 'pending';

SELECT *
FROM transactions
WHERE amount > 100
ORDER BY amount DESC;

SELECT *
FROM transactions
WHERE status = 'success'
ORDER BY amount DESC
LIMIT 3;


