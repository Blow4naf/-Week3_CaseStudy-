use week3project;
SELECT c.city, COUNT(DISTINCT c.customer_id) AS unique_customers
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.city
ORDER BY unique_customers DESC
LIMIT 5;

SELECT CASE
         WHEN age BETWEEN 18 AND 24 THEN '18-24'
         WHEN age BETWEEN 25 AND 34 THEN '25-34'
         WHEN age BETWEEN 35 AND 44 THEN '35-44'
         when age between 45 and 54 then '45-54'
         ELSE '55+'
       END AS age_group,
       AVG(p.price * s.quantity) AS avg_spent
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY age_group
ORDER BY avg_spent DESC;

SELECT CASE
         WHEN age BETWEEN 18 AND 24 THEN '18-24'
         WHEN age BETWEEN 25 AND 34 THEN '25-34'
         WHEN age BETWEEN 35 AND 44 THEN '35-44'
         when age between 45 and 54 then '45-54'
         ELSE '55+'
       END AS age_group,
       sum(p.price * s.quantity) AS total_spent
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY age_group
ORDER BY total_spent DESC;

