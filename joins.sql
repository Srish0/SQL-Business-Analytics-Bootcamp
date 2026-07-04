USE analytics_bootcamp;

-- INNER JOIN
-- Display customer name, purchased product and amount

SELECT
    customers.customer_name,
    orders.product,
    orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;


-- INNER JOIN
-- Display customer name, city and purchased product

SELECT
    customers.customer_name,
    customers.city,
    orders.product
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;


-- LEFT JOIN
-- Display all customers even if they have not placed an order

SELECT
    customers.customer_name,
    customers.city,
    orders.product
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;


-- RIGHT JOIN
-- Display all orders even if customer information is unavailable

SELECT
    customers.customer_name,
    orders.product,
    orders.amount
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;
