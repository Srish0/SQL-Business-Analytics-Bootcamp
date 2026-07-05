USE analytics_bootcamp;

 Classify customers by age
SELECT
    customer_name,
    age,
    CASE
        WHEN age >= 25 THEN 'Senior'
        WHEN age >= 22 THEN 'Adult'
        ELSE 'Young'
    END AS age_classification
FROM customers;

 Classify orders by value
SELECT
    product,
    amount,
    CASE
        WHEN amount >= 50000 THEN '20% Discount'
        WHEN amount >= 10000 THEN '10% Discount'
        ELSE 'No Discount'
    END AS discount
FROM orders;

 Customers older than average with age category
SELECT
    customer_name,
    age,
    CASE
        WHEN age >= 25 THEN 'Senior'
        WHEN age >= 22 THEN 'Adult'
        ELSE 'Young'
    END AS age_classification
FROM customers
WHERE age > (
    SELECT AVG(age)
    FROM customers
);
