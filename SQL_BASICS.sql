-- Q1: List all distinct countries.
SELECT DISTINCT(*)
FROM orders;

-- Q2: Find transactions where UnitPrice is BETWEEN 1 AND 5.
SELECT CustomerID
FROM orders
WHERE UnitPrice BETWEEN 1 AND 5;

-- Q3: Count the total number of rows in the table.
SELECT COUNT(*)
FROM orders;

-- Q4: Retrieve customers with an average unit price above 4.
SELECT CustomerID, ROUND(AVG(UnitPrice),2)
FROM orders
GROUP BY CustomerID HAVING AVG(UnitePrice) > 4;

-- Q5: Select rows where Country is NOT 'United Kingdom'.
SELECT Country
FROM orders
WHERE Country != 'United Kingdom';

-- Q6: Display the top 10 most expensive items by UnitPrice.
SELECT UnitPrice
FROM orders
ORDER BY UnitPrice DESC
LIMIT 10;

-- Q7: Find products whose Description contains the word 'HEART'.
SELECT Description
FROM orders
WHERE Description LIKE '%HEART%';

-- Q8: Count how many distinct CustomerID exist.
SELECT COUNT(CustomerID)
FROM orders;

-- Q9: Find countries where the average unit price is greater than 5.
SELECT Country, ROUND(AVG(UnitPrice),2)
FROM orders
GROUP BY Country HAVING AVG(UnitPrice) > 5;

-- Q10: Retrieve rows where Description starts with 'WHITE'.
SELECT Description
FROM orders
WHERE Description LIKE 'WHITE%';

-- Q11: Find transactions where Quantity is negative.
SELECT InvoiceNo, Quantity
FROM orders
WHERE Quantity < 0;

-- Q12: Show the first 20 rows of the table.
SELECT *
FROM orders
LIMIT 20;

-- Q13: Count the number of unique invoices.
SELECT COUNT(DISTINCT(InvoiceNo))
FROM orders;

-- Q14: Find products that appear in more than 100 invoices.
SELECT StockCode, COUNT(DISTINCT(InvoiceNo)) 
FROM orders
GROUP BY StockCode HAVING COUNT(DISTINCT(InvoiceNo)) > 100
ORDER BY StockCode DESC;

-- Q15: List customers whose total purchased quantity exceeds 100.
SELECT CustomerID, SUM(Quantity) AS QUANTITY
FROM orders
GROUP BY CustomerID HAVING SUM(Quantity) > 100

-- Q16: Retrieve rows where Country is IN ('France', 'Germany', 'Netherlands').
SELECT *
FROM orders
WHERE Country IN ('France','Germany','Netherlands')
ORDER BY Country;

-- Q17: Find the maximum and minimum UnitPrice.
SELECT MAX(UnitPrice), MIN(UnitPrice)
FROM orders;

-- Q18: Select all rows where CustomerID is not NULL.
SELECT *
FROM orders
WHERE CustomerID IS NOT NULL;

-- Q19: Find customers who placed more than 10 orders.
SELECT CustomerID, COUNT(DISTINCT(InvoiceNo))
FROM orders
GROUP BY CustomerID HAVING COUNT(DISTINCT(InvoiceNo))> 10;

-- Q20: List the 10 most recent transactions.

-- Q21: Select transactions where Country is 'Germany' OR 'Spain'.
SELECT *
FROM orders 
WHERE Country = 'Germany' OR Country = 'Spain'
ORDER BY Country;

-- Q22: Find the total quantity sold per country.
SELECT Country, SUM(Quantity) AS Quantity
FROM orders
GROUP BY Country
ORDER BY Quantity DESC;

-- Q23: Retrieve products where Description ends with 'BAG'.
SELECT StockCode, Description
FROM orders
WHERE Description LIKE '%BAG';

-- Q24: Display all rows where Quantity is greater than 10.
SELECT *
FROM orders
WHERE Quantity > 10;

-- Q25: Calculate the average UnitPrice.
SELECT AVG(UnitPrice)
FROM orders;

-- Q26: Find how many unique products exist.
SELECT DISTINCT(StockCode)
FROM orders;

-- Q27: Retrieve rows where StockCode starts with a letter.
SELECT *
FROM orders
WHERE StockCode ~ '^[A-Za-z]';

-- Q28: Count the number of transactions per country.
SELECT Country, COUNT(DISTINCT(InvoiceNo)) AS Count_transact
FROM orders
GROUP BY Country
ORDER BY  Count_transact DESC;

-- Q29: Find orders from 'France' with Quantity greater than 5.
SELECT *
FROM orders
WHERE Country = 'France' AND Quantity > 5;

-- Q30: Show products that have sold more than 500 total units.
SELECT StockCode, SUM(Quantity) AS total_units_sold
FROM orders
GROUP BY StockCode HAVING SUM(Quantity) >500;

-- Q31: Retrieve customers who bought more than 3 different products.

-- Q32: Find the total quantity of items sold.
-- Q33: Sort all transactions by InvoiceDate ascending.
-- Q34: List customers from 'Germany' using DISTINCT.
-- Q35: Find rows where Description contains 'SET'.
-- Q36: Calculate the average unit price per country.
-- Q37: Display the 5 largest quantities sold in a single transaction.
-- Q38: Retrieve rows where UnitPrice is less than 2.
-- Q39: List all distinct product descriptions.
-- Q40: Find countries with more than 1,000 transactions.
-- Q41: Count how many invoices each customer has.
-- Q42: Retrieve transactions where Quantity is BETWEEN 1 AND 3.
-- Q43: Sort transactions by UnitPrice descending.
-- Q44: Find customers whose total quantity purchased is greater than 100.
-- Q45: Retrieve all rows where Country is 'United Kingdom'.
-- Q46: Find countries with at least 50 distinct customers.
-- Q47: Select only InvoiceNo, InvoiceDate, and CustomerID.
-- Q48: Find the top 5 countries by total quantity sold.
-- Q49: Display all column names and data types for the table.
-- Q50: Select all columns from the ecommerce table.
