# Data Dictionary

## Overview
This document describes the core tables and columns used in the FinTech SQL Analytics Project.

---

## 1. customers

Stores customer-level information.

| Column Name | Data Type | Description |
|---|---|---|
| customer_id | INTEGER | Unique identifier for each customer |
| full_name | VARCHAR(100) | Full name of the customer |
| city | VARCHAR(50) | City of the customer |
| signup_date | DATE | Date when the customer signed up |
| age | INTEGER | Age of the customer |
| segment | VARCHAR(20) | Customer segment (e.g. standard, premium, business) |

---

## 2. accounts

Stores account information linked to customers.

| Column Name | Data Type | Description |
|---|---|---|
| account_id | INTEGER | Unique identifier for each account |
| customer_id | INTEGER | Foreign key referencing customers.customer_id |
| account_type | VARCHAR(30) | Type of account (e.g. wallet, checking, savings) |
| open_date | DATE | Date when the account was opened |
| status | VARCHAR(20) | Account status (e.g. active, inactive, suspended) |

---

## 3. merchants

Stores merchant-level information.

| Column Name | Data Type | Description |
|---|---|---|
| merchant_id | INTEGER | Unique identifier for each merchant |
| merchant_name | VARCHAR(100) | Name of the merchant |
| category | VARCHAR(50) | Merchant category |
| city | VARCHAR(50) | City of the merchant |

---

## 4. transactions

Stores transaction-level activity.

| Column Name | Data Type | Description |
|---|---|---|
| transaction_id | INTEGER | Unique identifier for each transaction |
| account_id | INTEGER | Foreign key referencing accounts.account_id |
| merchant_id | INTEGER | Foreign key referencing merchants.merchant_id |
| transaction_date | TIMESTAMP | Date and time of the transaction |
| amount | NUMERIC(12,2) | Transaction amount |
| transaction_type | VARCHAR(20) | Type of transaction (e.g. payment, refund, transfer) |
| payment_method | VARCHAR(30) | Payment method used |
| status | VARCHAR(20) | Transaction status (e.g. success, failed, pending) |

---

## Relationships

- One customer can have multiple accounts.
- One account can have multiple transactions.
- One merchant can appear in multiple transactions.
- Transactions connect accounts and merchants.

---

## Notes

This structure is designed to support SQL analysis for customer behavior, transaction trends, merchant performance, payment patterns, and risk-related signals.