/*
====================================================
Inventory Analysis
====================================================

Description:
This script examines stock availability and
inventory distribution across categories.

Analysis Performed:
1. Out-of-stock products.
2. Available products.
3. Category-wise stock levels.
4. Products with low inventory.
5. Average available quantity.
6. Categories with maximum stock.
====================================================
*/
--Q49. Number of out-of-stock products
SELECT TOP 10 * FROM ZEPTO
SELECT COUNT(*)
FROM ZEPTO
WHERE outOfStock=1

--Q50. List out-of-stock products

SELECT CATEGORY,NAME
FROM ZEPTO
WHERE outOfStock=1

--Q51. Available products count

SELECT COUNT(*)
FROM ZEPTO
WHERE outOfStock=0

--Q52. Average available quantity

SELECT AVG(AVAILABLEQUANTITY) AS AVG_AVAILABLE_QUANTITY
FROM ZEPTO

--Q53. Category-wise stock quantity

SELECT CATEGORY,SUM(AVAILABLEQUANTITY) AS STOCK_QUANTITY
FROM ZEPTO
GROUP BY CATEGORY

--Q54. Categories with maximum stock

SELECT CATEGORY,SUM(AVAILABLEQUANTITY) AS STOCK_QUANTITY
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY STOCK_QUANTITY DESC

--Q55. Products with low stock (<10)

SELECT NAME,AVAILABLEQUANTITY
FROM ZEPTO
WHERE availableQuantity<10