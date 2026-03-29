CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    full_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE,
    age INTEGER,
    segment VARCHAR(20)
);
CREATE TABLE accounts (
    account_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    account_type VARCHAR(30),
    open_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE merchants (
    merchant_id INTEGER PRIMARY KEY,
    merchant_name VARCHAR(100),
    category VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY,
    account_id INTEGER,
    merchant_id INTEGER,
    transaction_date TIMESTAMP,
    amount NUMERIC(12,2),
    transaction_type VARCHAR(20),
    payment_method VARCHAR(30),
    status VARCHAR(20),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (merchant_id) REFERENCES merchants(merchant_id)
);