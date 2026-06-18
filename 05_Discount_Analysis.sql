/*
====================================================
Discount Analysis
====================================================

Description:
This script analyzes discount patterns and
identifies highly discounted products and
categories.

Analysis Performed:
1. Average discount percentage.
2. Top discounted products.
3. Category-wise discount analysis.
4. Products with no discounts.
5. Discount categorization using CASE statements.
6. Highest and lowest discount categories.
====================================================
*/
--Q40. Average discount percentage
SELECT * FROM ZEPTO

SELECT AVG(DISCOUNTPERCENT) AS AVG_DISCOUNT_PERCENT
FROM ZEPTO

--Q41. Top 10 highest discounted products

SELECT TOP 10 NAME,DISCOUNTPERCENT
FROM ZEPTO
ORDER BY DISCOUNTPERCENT DESC

--Q42. Average discount by category

SELECT CATEGORY,AVG(DISCOUNTPERCENT) AS AVG_DISCOUNT_PERCENT
FROM ZEPTO
GROUP BY CATEGORY

--Q43. Categories with highest discounts

SELECT CATEGORY,SUM(DISCOUNTPERCENT) AS DISCOUNT
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY DISCOUNT DESC

--Q44. Products having discount above 50%

SELECT * FROM ZEPTO
WHERE DISCOUNTPERCENT>50

--Q45. Count products with no discount

SELECT COUNT(*) AS [COUNT]
FROM ZEPTO
WHERE DISCOUNTPERCENT=0

--Q46. Categorize discounts

SELECT NAME,
CASE
WHEN DISCOUNTPERCENT > 50 THEN 'HIGH-LEVEL'
WHEN DISCOUNTPERCENT > 25 THEN 'MEDIUM-LEVEL'
ELSE 'LOW-LEVEL'
END AS DISCOUNT_CATEGORY
FROM ZEPTO

--Q47. Highest discount category

SELECT TOP 1 CATEGORY,SUM(DISCOUNTPERCENT) AS DISCOUNT_PERCENT
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY DISCOUNT_PERCENT DESC

--Q48. LOWEST DISCOUNT CATEGORY

SELECT TOP 1 CATEGORY,SUM(DISCOUNTPERCENT) AS DISCOUNT_PERCENT
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY DISCOUNT_PERCENT 



