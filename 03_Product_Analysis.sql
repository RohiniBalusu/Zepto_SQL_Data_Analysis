/*
====================================================
Product Analysis
====================================================

Description:
This script analyzes product distribution and
characteristics across categories.

Analysis Performed:
1. Top expensive products.
2. Cheapest products.
3. Product count by category.
4. Category with maximum products.
5. Product weight analysis.
6. Quantity analysis.
7. Top and bottom products by weight.
====================================================
*/

--Q20. Top 10 expensive products

SELECT * FROM ZEPTO

SELECT TOP 10 CATEGORY,NAME,MRP FROM ZEPTO
ORDER BY MRP DESC

--Q21. Cheapest 10 products

SELECT TOP 10 CATEGORY,NAME,MRP 
FROM ZEPTO
ORDER BY MRP

--Q22. Product count by category

	SELECT CATEGORY,COUNT(NAME) AS PRODUCT_COUNT
	FROM ZEPTO
	GROUP BY CATEGORY

--Q23. Category having maximum products

WITH CATEGORY_COUNT AS (
SELECT CATEGORY,COUNT(NAME) AS PRODUCT_COUNT
FROM ZEPTO
GROUP BY CATEGORY
)
SELECT CATEGORY,PRODUCT_COUNT FROM CATEGORY_COUNT
WHERE PRODUCT_COUNT=(SELECT MAX(PRODUCT_COUNT) FROM CATEGORY_COUNT)

--Q24. Average product weight by category

SELECT CATEGORY,AVG(WEIGHTINGMS) AS AVERAGE_WEIGHT
FROM ZEPTO
GROUP BY CATEGORY

--Q25. Top 10 heaviest products

SELECT TOP 10 NAME,WEIGHTINGMS
FROM ZEPTO
ORDER BY WEIGHTINGMS DESC

--Q26. Top 10 lightest products

SELECT TOP 10 NAME,WEIGHTINGMS
FROM ZEPTO
ORDER BY WEIGHTINGMS 

--Q27. Products weighing more than 1kg

SELECT NAME,WEIGHTINGMS
FROM ZEPTO
WHERE WEIGHTINGMS>1000

--Q28. Average quantity per product

SELECT NAME,AVG(QUANTITY) AS AVG_QUANTITY
FROM ZEPTO
GROUP BY NAME

--Q29. Product with highest quantity

SELECT CATEGORY,NAME,QUANTITY 
FROM ZEPTO
ORDER BY QUANTITY DESC

