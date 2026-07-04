USE analytics_bootcamp;

-- View all customers
SELECT * FROM customers;

-- Show customers older than 22
SELECT *
FROM customers
WHERE age > 22;

-- Display only customer names
SELECT customer_name
FROM customers;

-- Sort customers by age (Youngest to Oldest)
SELECT *
FROM customers
ORDER BY age ASC;

-- Sort customers by age (Oldest to Youngest)
SELECT *
FROM customers
ORDER BY age DESC;

-- Show the oldest customer
SELECT *
FROM customers
ORDER BY age DESC
LIMIT 1;

-- Show unique cities
SELECT DISTINCT city
FROM customers;

-- Count total customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- Average customer age
SELECT AVG(age) AS Average_Age
FROM customers;

-- Youngest customer
SELECT MIN(age) AS Youngest
FROM customers;

-- Oldest customer
SELECT MAX(age) AS Oldest
FROM customers;

-- Count customers by city
SELECT city, COUNT(*) AS Total_Customers
FROM customers
GROUP BY city;

-- Average age by city
SELECT city, AVG(age) AS Average_Age
FROM customers
GROUP BY city;

-- Youngest customer in each city
SELECT city, MIN(age) AS Youngest
FROM customers
GROUP BY city;

-- Cities having at least 2 customers
SELECT city, COUNT(*) AS Total_Customers
FROM customers
GROUP BY city
HAVING COUNT(*) >= 2;
