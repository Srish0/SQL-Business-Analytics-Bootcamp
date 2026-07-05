USE analytics_bootcamp;

Find the oldest customer
SELECT *
FROM customers
WHERE age = (
    SELECT MAX(age)
    FROM customers
);

 Find the youngest customer
SELECT *
FROM customers
WHERE age = (
    SELECT MIN(age)
    FROM customers
);

Find customers older than the average age
SELECT *
FROM customers
WHERE age > (
    SELECT AVG(age)
    FROM customers
);

Find customers who have placed at least one order
SELECT *
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);

 Find customers who have never placed an order
SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);
