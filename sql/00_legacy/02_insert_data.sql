INSERT INTO customers VALUES
(1, 'Ahmet Yılmaz', 'Istanbul', '2023-01-10', 28, 'standard'),
(2, 'Ayşe Demir', 'Ankara', '2023-02-15', 32, 'premium'),
(3, 'Mehmet Kaya', 'Izmir', '2023-03-20', 24, 'standard'),
(4, 'Zeynep Çelik', 'Istanbul', '2023-04-05', 29, 'premium'),
(5, 'Ali Veli', 'Bursa', '2023-05-12', 35, 'business');

INSERT INTO accounts VALUES
(101, 1, 'wallet', '2023-01-11', 'active'),
(102, 2, 'checking', '2023-02-16', 'active'),
(103, 3, 'wallet', '2023-03-21', 'inactive'),
(104, 4, 'savings', '2023-04-06', 'active'),
(105, 5, 'checking', '2023-05-13', 'active');

INSERT INTO merchants VALUES
(201, 'Migros', 'grocery', 'Istanbul'),
(202, 'Teknosa', 'electronics', 'Ankara'),
(203, 'Trendyol', 'e-commerce', 'Istanbul'),
(204, 'Getir', 'delivery', 'Istanbul'),
(205, 'LC Waikiki', 'fashion', 'Bursa');

INSERT INTO transactions VALUES
(1001, 101, 201, '2024-01-01 10:15:00', 250.50, 'payment', 'card', 'success'),
(1002, 102, 202, '2024-01-02 12:30:00', 1250.00, 'payment', 'card', 'success'),
(1003, 103, 203, '2024-01-03 14:00:00', 300.75, 'payment', 'wallet_balance', 'failed'),
(1004, 104, 204, '2024-01-04 16:45:00', 80.20, 'payment', 'card', 'success'),
(1005, 105, 205, '2024-01-05 18:10:00', 500.00, 'payment', 'bank_transfer', 'pending');

select * from customers ;
select * from customers 
limit 3;
SELECT full_name, city FROM customers;
SELECT * FROM customers
WHERE city = 'Istanbul';
SELECT * FROM customers
WHERE segment = 'premium';

SELECT * FROM customers
ORDER BY age DESC;
