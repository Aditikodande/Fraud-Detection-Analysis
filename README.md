# 🚨 Fraud Detection System using SQL

## 📌 Project Overview

This project focuses on building a **Fraud Detection System** using SQL by analyzing transactional data to identify suspicious patterns, fraud activities, and customer behavior. The database simulates real-world banking transactions, enabling data analysis, fraud monitoring, and business insights generation.

The project demonstrates strong skills in **SQL querying, data analysis, and fraud detection logic**, making it ideal for Data Analyst and Backend roles.

---

## 🗂️ Database Details

* **Database Name:** `fraud_detection_db`
* The dataset is **fully embedded inside the SQL file itself** (no external dataset required).
* Includes multiple relational tables to simulate a banking ecosystem.

---

## 📊 Tables Used

1. **users** – Customer information
2. **accounts** – Account details and balances
3. **transactions** – Transaction records
4. **transaction_details** – Merchant and transaction status
5. **fraud_alerts** – Fraud detection flags
6. **devices** – Device usage information
7. **locations** – City and country mapping

---

## ⚙️ Key Features

* End-to-end database creation using SQL
* Realistic financial transaction simulation
* Fraud detection using rules and analysis
* Use of **Joins, Aggregations, Window Functions**
* Insight generation for business and security teams

---

## 🔍 Key Analysis & Insights

### 📈 Business Insights

* Total transactions and total transaction amount
* Top 5 high-value users based on spending
* City-wise transaction distribution
* Debit vs Credit transaction analysis
* Device usage trends (Mobile vs Laptop)

### 💳 Customer Behavior

* Average transaction amount
* High-value transactions (> ₹30,000)
* Most frequently used merchants

### ⚠️ Fraud Detection Insights

* Total fraud cases and fraud percentage
* Fraud type distribution:

  * High Amount
  * Location Mismatch
  * Multiple Transactions
  * Suspicious Merchant
* Fraud transactions with amount and user details
* Detection of sudden spikes using **LAG() window function**
* Users with the highest failed transactions

### 📉 System Monitoring

* Failed transaction count
* Daily transaction trends

---

## 🧠 Advanced SQL Concepts Used

* **Joins** (INNER JOIN)
* **Aggregate Functions** (SUM, COUNT, AVG)
* **Grouping & Ordering**
* **Window Functions** (LAG)
* **CASE Statements**
* **Subqueries**

---

## 📊 Sample Insights

* Identified users with abnormal transaction spikes (potential fraud)
* High-value transactions contribute significantly to fraud alerts
* Certain cities and devices show higher transaction volume
* Fraud rate calculated using SQL logic

---

## 🚀 How to Run the Project

1. Open MySQL / SQL environment
2. Run the SQL file step by step:

   * Create database
   * Create tables
   * Insert data
   * Execute analysis queries
3. View results and derive insights

---

## 🎯 Project Outcome

This project helps in:

* Understanding fraud detection mechanisms
* Performing real-world data analysis using SQL
* Building strong analytical thinking for financial data

---

## 🛠️ Tools Used

* SQL (MySQL)
* Database Design
* Data Analysis Techniques

---

## 📌 Conclusion

The Fraud Detection SQL Project showcases how structured data can be used to detect suspicious activities and generate meaningful insights. It reflects strong fundamentals in **data analysis, SQL querying, and problem-solving**, making it a valuable portfolio project.

---
