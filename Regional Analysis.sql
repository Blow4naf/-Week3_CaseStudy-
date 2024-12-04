select count(*) from stores where StoreName is null;
select count(*) from sales where store_id is null;
select distinct city from stores;


SELECT st.city AS region, SUM(p.price * s.quantity) AS total_sales
FROM Sales s
JOIN Stores st ON s.store_id = st.store_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY st.city
ORDER BY total_sales DESC;

SELECT st.city AS region, AVG(p.price * s.quantity) AS avg_sale_value
FROM Sales s
JOIN Stores st ON s.store_id = st.store_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY st.city
ORDER BY avg_sale_value DESC
LIMIT 1;
