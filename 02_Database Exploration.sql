/*
====================================================
Data Exploration
====================================================

Description:
This script explores the Zepto dataset to gain a
high-level understanding of its structure and
contents.

Analysis Performed:
1. Total number of products.
2. Number of unique categories.
3. List of available categories.
4. Average product MRP.
5. Maximum and minimum product prices.

====================================================

*/
SELECT * FROM ZEPTO
--Q15. Total number of products

SELECT COUNT(*) AS TOTAL_PRODUCTS 
FROM ZEPTO

--Q16. Number of unique categories

SELECT COUNT(DISTINCT CATEGORY) AS UNIQUE_CATEGORIES
FROM ZEPTO

--Q17. List all categories

SELECT DISTINCT CATEGORY FROM ZEPTO

--Q18. Average MRP of all products

SELECT ROUND(AVG(MRP),2) FROM ZEPTO

--Q19. Maximum and minimum MRP

SELECT MAX(MRP) AS MAXIMUM_MRP,MIN(MRP) AS MINIMUM_MRP
FROM ZEPTO