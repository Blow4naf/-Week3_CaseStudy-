select count(*) from customers where CustomerName is null;
select distinct customer_id from customers;
select distinct CustomerName from customers;
select count(*) from customers;

SELECT customer_id
FROM Sales
WHERE YEAR(sale_date) = 2023
GROUP BY customer_id
HAVING COUNT(DISTINCT MONTH(sale_date)) = 12;

SELECT ROUND(
         (COUNT(DISTINCT CASE WHEN purchase_count > 1 THEN customer_id END) 
         / COUNT(DISTINCT customer_id)) * 100, 2) AS repeat_customer_percentage
FROM (
    SELECT customer_id, COUNT(*) AS purchase_count
    FROM Sales
    GROUP BY customer_id
) subquery;

