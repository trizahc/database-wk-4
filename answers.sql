-- answers.sql
-- Assignment: SQL Aggregate Functions Practice
-- Student: Trizah Chepkirui

------------------------------------------------------
-- Question 1: Total payment amount for each payment date, top 5 latest dates
------------------------------------------------------
-- This query sums the payment amounts per date, sorts them descending, and limits to top 5.
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

------------------------------------------------------
-- Question 2: Average credit limit of each customer
------------------------------------------------------
-- This query calculates the average credit limit for each customer, grouped by customer name and country.
SELECT customerName, country, AVG(creditLimit) AS avgCreditLimit
FROM customers
GROUP BY customerName, country;

------------------------------------------------------
-- Question 3: Total price of products ordered
------------------------------------------------------
-- This query calculates the total price for each product in orderdetails (quantity * price) grouped by product code and quantity.
SELECT productCode, quantityOrdered, (quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

------------------------------------------------------
-- Question 4: Highest payment amount for each check number
------------------------------------------------------
-- This query finds the maximum amount paid per check number.
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
