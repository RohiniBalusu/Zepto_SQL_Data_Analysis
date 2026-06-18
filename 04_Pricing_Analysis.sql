/*
====================================================
Pricing Analysis
====================================================

Description:
This script evaluates pricing patterns and
product value across categories.

Analysis Performed:
1. Average selling price.
2. Products above a price threshold.
3. Products below a price threshold.
4. Category-wise average MRP.
5. Products priced above category average.
6. Product savings analysis.
7. Highest savings products.
====================================================
*/

--Q30. Average discounted selling price

SELECT * FROM ZEPTO

SELECT AVG(DISCOUNTEDSELLINGPRICE) AS AVG_PRICE
FROM ZEPTO

--Q31. Products with MRP greater than ₹500

SELECT NAME,MRP
FROM ZEPTO
WHERE MRP>500

--Q32. Products with selling price less than ₹100

SELECT NAME,DISCOUNTEDSELLINGPRICE
FROM ZEPTO
WHERE DISCOUNTEDSELLINGPRICE<100

--Q33. Top 10 categories by average MRP

SELECT TOP 10 CATEGORY,AVG(MRP) AS AVG_MRP
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY AVG_MRP DESC

--Q34. Difference between MRP and selling price

SELECT NAME,MRP-DISCOUNTEDSELLINGPRICE AS SAVINGS
FROM ZEPTO

--Q35. Top 10 products giving highest savings

SELECT TOP 10 NAME,MRP-DISCOUNTEDSELLINGPRICE AS SAVINGS
FROM ZEPTO
ORDER BY SAVINGS DESC

--Q36. Average selling price by category

SELECT CATEGORY,AVG(DISCOUNTEDSELLINGPRICE) AS AVG_SELLING_PRICE
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY AVG_SELLING_PRICE DESC

--Q37. Categories having average selling price above ₹300

SELECT CATEGORY,AVG(DISCOUNTEDSELLINGPRICE) AS AVG_SELLING_PRICE
FROM ZEPTO
GROUP BY CATEGORY
HAVING AVG(DISCOUNTEDSELLINGPRICE)>300

--Q38. Count products costing above average MRP

SELECT COUNT(*) AS [COUNT] FROM ZEPTO
WHERE MRP>(SELECT AVG(MRP) FROM ZEPTO)

--Q39. Products priced above category average

SELECT NAME,CATEGORY,MRP FROM ZEPTO Z
WHERE MRP>(SELECT AVG(MRP) FROM ZEPTO
WHERE CATEGORY=Z.Category)