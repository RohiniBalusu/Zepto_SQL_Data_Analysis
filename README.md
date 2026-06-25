<img width="900" height="500" alt="ChatGPT Image Jun 25, 2026, 10_15_45 AM" src="https://github.com/user-attachments/assets/5ac331a2-7f0a-415b-b459-c77be51ce2eb" />

## 🛒 Zepto Product & Inventory Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing Zepto's product inventory dataset using SQL Server. The objective is to derive meaningful insights related to product pricing, discounts, category distribution, and inventory management while demonstrating proficiency in SQL concepts ranging from basic aggregations to advanced window functions.






---

## 🎯 Objectives

* Explore and understand the product dataset.
* Perform data cleaning and quality checks.
* Analyze pricing and discount patterns.
* Evaluate inventory and stock availability.
* Identify top-performing products and categories.
* Demonstrate advanced SQL techniques for business analysis.

---

## 📂 Dataset Information

The dataset contains information about products available on Zepto, including:

* SKU ID
* Category
* Product Name
* MRP
* Discount Percentage
* Available Quantity
* Discounted Selling Price
* Weight (grams)
* Out-of-Stock Status
* Quantity

---

## 🛠 Tools Used

* SQL Server
* SQL Server Management Studio (SSMS)
* GitHub

---

## 📁 Project Structure

```
Zepto-SQL-Data-Analysis
│
├── Dataset
│     zepto.csv
│
├── 00_data_cleaning.sql
├── 01_database_exploration.sql
├── 02_product_analysis.sql
├── 03_pricing_analysis.sql
├── 04_discount_analysis.sql
├── 05_inventory_analysis.sql
├── 06_advanced_sql.sql
│
├── schema.sql
├── README.md
└── screenshots
```

---

## 📊 Analysis Performed

### Data Cleaning

* Checked for null values.
* Investigated duplicate records.
* Analyzed duplicate product names.
* Examined products appearing in multiple categories.
* Verified pricing and inventory columns.

### Database Exploration

* Total number of products.
* Unique categories.
* Maximum and minimum MRP.
* Average product price.

### Product Analysis

* Top expensive products.
* Cheapest products.
* Product count by category.
* Product weight analysis.
* Quantity analysis.

### Pricing Analysis

* Average selling price.
* Products above category average.
* Highest savings products.
* Category-wise price comparison.

### Discount Analysis

* Average discount percentage.
* Most discounted products.
* Highest and lowest discount categories.
* Discount classification using CASE statements.

### Inventory Analysis

* Out-of-stock products.
* Available products.
* Category-wise stock quantity.
* Low inventory products.

### Advanced SQL Analysis

* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* Running Totals
* Percentage Contribution Analysis
* Category-wise Ranking

---

## 💡 SQL Concepts Used

### Aggregate Functions

* SUM()
* AVG()
* COUNT()
* MAX()
* MIN()

### Conditional Statements

* CASE WHEN

### Subqueries

### Common Table Expressions (CTEs)

### Window Functions

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* SUM() OVER()
* AVG() OVER()

### Filtering and Grouping

* WHERE
* GROUP BY
* HAVING
* ORDER BY

---

## 📈 Key Insights

* Certain products belong to multiple categories.
* Pricing and discount percentages vary significantly across categories.
* A few categories contribute a large proportion of the overall inventory value.
* Most products are concentrated within a limited number of categories.
* The dataset contains minimal duplicate records and maintains good data quality.

---

## 📌 Total Business Problems Solved

**63 SQL Business Questions**

---

## 🚀 Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Business Problem Solving
* SQL Query Optimization
* CTEs
* Window Functions
* Analytical Thinking
* Inventory Analytics
* Pricing Analysis

---

## 👩‍💻 Author

**Rohini Balusu**

* B.Tech Computer Science Engineering
* Aspiring Data Analyst
* Skilled in SQL, Power BI, Python, Excel, and Data Visualization

---

## ⭐ If you found this project interesting, feel free to star the repository!
