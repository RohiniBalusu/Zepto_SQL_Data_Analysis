/*
====================================================
Advanced SQL Analysis
====================================================

Description:
This script demonstrates advanced SQL techniques
to derive meaningful business insights from the
Zepto dataset.

Concepts Used:
1. Common Table Expressions (CTEs).
2. Window Functions.
3. RANK().
4. DENSE_RANK().
5. Running Totals.
6. Percentage Contribution Analysis.
7. Ranking Products within Categories.
====================================================
*/
--Q56. Rank products by MRP within each category

SELECT CATEGORY,NAME,MRP,DENSE_RANK() OVER(PARTITION BY CATEGORY 
ORDER BY MRP DESC) AS RNK
FROM ZEPTO

--Q57. Top 3 expensive products in each category

SELECT * FROM (
SELECT CATEGORY,NAME,MRP,DENSE_RANK() OVER(PARTITION BY CATEGORY 
ORDER BY MRP DESC) AS RNK
FROM ZEPTO)T
WHERE RNK<=3

--Q58. Rank products based on discount

SELECT NAME,DISCOUNTPERCENT,
RANK() OVER(ORDER BY DISCOUNTPERCENT DESC) AS RNK
FROM ZEPTO

--Q59. Dense rank products by MRP

SELECT NAME,MRP,
DENSE_RANK() OVER(ORDER BY MRP DESC) AS RNK
FROM ZEPTO

--Q60. Category-wise average MRP using window functions

SELECT CATEGORY,NAME,MRP,
AVG(MRP) OVER(PARTITION BY CATEGORY) AS AVG_MRP
FROM ZEPTO

--Q61. Products above category average

WITH AVG_CATEGORY AS(
SELECT *,
AVG(MRP) OVER(PARTITION BY CATEGORY) AS AVG_MRP
FROM ZEPTO
)
SELECT * FROM AVG_CATEGORY
WHERE MRP>AVG_MRP

--Q62. Running total of MRP

SELECT NAME,
SUM(MRP) OVER(ORDER BY MRP) AS RUNNING_TOTAL
FROM ZEPTO

--Q63. Percent contribution of each product to total MRP

SELECT NAME,
MRP*100/(SELECT SUM(MRP) FROM ZEPTO) AS PERCENT_CONTRIBUTION
FROM ZEPTO
